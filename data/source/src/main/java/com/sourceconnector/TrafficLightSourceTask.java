package com.sourceconnector;

import java.io.IOException;
import java.net.URISyntaxException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;

import org.apache.kafka.connect.data.Schema;
import org.apache.kafka.connect.errors.ConnectException;
import org.apache.kafka.connect.source.SourceRecord;
import org.apache.kafka.connect.source.SourceTask;
import org.apache.kafka.connect.storage.OffsetStorageReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sourceconnector.config.TrafficLightSourceConnectorConfig;
import com.sourceconnector.dataset.DataService;
import com.sourceconnector.dataset.model.TrafficSignalData;

public class TrafficLightSourceTask extends SourceTask {
	private static final Logger log = LoggerFactory.getLogger(TrafficLightSourceTask.class);

	private Function<Integer, DataService> dataServiceSupplier;
	private String topic;
	private TrafficLightSourceConnectorConfig config;

	private TrafficLightSourcePartition trafficLightSourcePartitions;
	private long pollIntervalMs;

	private String apiKey;

	public TrafficLightSourceTask() {
		super();
	}

	public TrafficLightSourceTask(final Function<Integer, DataService> dataServiceSupplier) {
		super();
		this.dataServiceSupplier = dataServiceSupplier;
	}

	private Function<Integer, DataService> createDataServiceSupplier(String apiKey) {
		return (intersectionId) -> {
			try {
				return DataService.builder()
					.intersectionId(intersectionId)
					.apiKey(apiKey)
					.build();
			} catch (URISyntaxException e) {
				throw new ConnectException(e);
			}
		};
	}

	// public TrafficLightSourceTask() {
	// 	super();
	// 	this.dataServiceSupplier = (intersectionId) -> {
	// 		try {
	// 			return DataService.builder()
	// 				.intersectionId(intersectionId)
	// 				.build();
	// 		} catch (URISyntaxException e) {
	// 			throw new ConnectException(e);
	// 		}
	// 	};
	// }

	@Override
	public String version() {
		// 버전 반환
		return "1.0";
	}

	@Override
	public void start(Map<String, String> props) {
		config = new TrafficLightSourceConnectorConfig(props);
		topic = config.getTopic();
		pollIntervalMs = Long.parseLong(props.get("poll.interval.ms"));
		apiKey = props.get("apiKey");
		OffsetStorageReader offsetStorageReader = context.offsetStorageReader();

		int intersectionId = config.getintersectionId();
		this.dataServiceSupplier = createDataServiceSupplier(apiKey);
		trafficLightSourcePartitions = createTrafficLightPartition(intersectionId, offsetStorageReader);

	}

	@Override
	public List<SourceRecord> poll() throws InterruptedException {
		log.info("Starting poll method.");
		//poll.interval.ms 만큼 sleep
		Thread.sleep(pollIntervalMs);

		try {
			List<SourceRecord> sourceRecords = new ArrayList<>();
			pollSourcePartition(trafficLightSourcePartitions, sourceRecords);
			log.info("Poll method completed with {} records.", sourceRecords.size());
			return sourceRecords;
		} catch (IOException e) {
			log.error("Error during poll: {}", e.getMessage(), e);
			throw new ConnectException(e);
		}
	}

	private void pollSourcePartition(TrafficLightSourcePartition trafficLightSourcePartition,
		List<SourceRecord> sourceRecords)
		throws IOException, InterruptedException {
		List<TrafficSignalData> data = getLastData(trafficLightSourcePartition);

		for (TrafficSignalData signalData : data) {
			trafficLightSourcePartition.setLastID(signalData.getItstId());
			trafficLightSourcePartition.setLastTimeStamp(signalData.getRegDt());
			sourceRecords.add(
				new SourceRecord(
					trafficLightSourcePartition.getSourcePartition(),
					trafficLightSourcePartition.getSourceOffset(),
					topic,
					Schema.INT64_SCHEMA,
					signalData.getKey(),
					TrafficSignalData.schema, signalData.toStruct()
				)
			);
		}
	}

	private List<TrafficSignalData> getLastData(TrafficLightSourcePartition trafficLightSourcePartition) throws
		IOException,
		InterruptedException {
		List<TrafficSignalData> data = trafficLightSourcePartition.getDataService().getData();

		// 찾으려는 요소의 인덱스 계산
		int startIndex = findStartIndex(data, trafficLightSourcePartition.getLastID(),
			trafficLightSourcePartition.getLastTimeStamp());

		// 주어진 인덱스부터 끝까지 서브리스트 반환
		return data.subList(startIndex, data.size());
	}

	private int findStartIndex(List<TrafficSignalData> data, Long lastID, LocalDateTime lastTimeStamp) {
		for (int i = 0; i < data.size(); i++) {
			TrafficSignalData signalData = data.get(i);
			if (Objects.equals(signalData.getItstId(), lastID) && Objects.equals(signalData.getRegDt(),
				lastTimeStamp)) {
				return i + 1;
			}
		}
		return 0; // 일치하는 항목이 없는 경우 시작 인덱스를 0으로 설정
	}

	@Override
	public void stop() {

	}

	private TrafficLightSourcePartition createTrafficLightPartition(int intersectionId,
		OffsetStorageReader offsetStorageReader) {

		TrafficLightSourcePartition trafficLightSourcePartition = new TrafficLightSourcePartition(intersectionId,
			this.dataServiceSupplier.apply(intersectionId));
		Map<String, Object> offset = offsetStorageReader.offset(trafficLightSourcePartition.getSourcePartition());
		trafficLightSourcePartition.setSourceOffset(offset);
		return trafficLightSourcePartition;
	}

}
