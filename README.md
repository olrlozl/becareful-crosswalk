# 🚦 조심횡
### 시각장애인의 안전한 횡단보도 보행을 지원해주는 앱 서비스
<img width="770" src="https://github.com/user-attachments/assets/d3ddbd8c-c469-40fb-95f0-dc3fd98a1b63" />


<a name="plans"></a>
## 🎯 기획 배경
<img width="770" src="https://github.com/user-attachments/assets/4f5c9291-71d8-4f99-bd91-0487bbb488f6" />
<img width="770" src="https://github.com/user-attachments/assets/794b70f6-845a-485b-bbe7-07c57e4af68a" />
<img width="770" src="https://github.com/user-attachments/assets/ca71a7fe-03fd-49f2-b291-bbffc02641d4" />


<a name="intro"></a>
## 💡 서비스 화면 & 기능 소개

<img width="770" src="https://github.com/user-attachments/assets/13c36945-e8cb-4949-a8a7-50520901254b" />

<img width="770" src="https://github.com/user-attachments/assets/a494824a-e05a-4e2c-956e-2ac6fac40d39" />

<img width="770" src="https://github.com/user-attachments/assets/5fadcd8b-3ecf-452a-af49-77e3f0f1daf7" />

<img width="770" src="https://github.com/user-attachments/assets/858f4fa9-95ae-4a1b-bd35-c6bfd0ba8947" />

<img width="770" src="https://github.com/user-attachments/assets/6fdbd94f-77df-4678-893d-d053861587c9" />


<a name="intro"></a>
## 🍀 기대효과
<img width="770" alt="기대효과" src="https://github.com/user-attachments/assets/8ae153f7-d83d-4b53-a779-d8425f0eaf56" />


<a name="features"></a>
## 🧑‍🦯 서비스 시연
### 🚗 교차로진입
<img width="770" src="https://github.com/NoRuTnT/becareful/assets/114069644/c3252238-83bc-4bf4-ba6f-8c87259deabc" />

### 🚸 횡단보도 진입
<img width="770" src="https://github.com/NoRuTnT/becareful/assets/114069644/80ef7699-edb4-4307-9ce8-cb63ddbca07e" />

### 🔴 빨간불 안내
<img width="770" src="https://github.com/NoRuTnT/becareful/assets/114069644/7aea430d-25cd-4c17-beb5-396bd63453b0" />

### 🟢 초록불 안내
<img width="770" src="https://github.com/NoRuTnT/becareful/assets/114069644/59acdfca-149e-4358-83c9-3d08a75ea43f" />

### 🧭 보행 방향 보조
<img width="770" src="https://github.com/NoRuTnT/becareful/assets/114069644/a910f5e2-e1a4-4d74-82d6-9c1b3d02e843" />


<a name="members"></a>
## 🙇 팀원 소개 

- 최동헌 (팀장/BE): S3, 카프카 Sink Connector
- 문준형 (인프라): 인프라, 카프카 파이프라인
- 차다운 (벡엔드장): 카프카 Sink Connector , Firebase
- 이은지 (프론트장): 신호 안내, 거리•방향, 불편신고, Firebase
- 김지환 (PM/FE): 신호 안내, Map, Geofencing


<a name="project"></a>
## 🧑🏻‍💻 프로젝트 진행

### 📔 Notion
- 프로젝트 관련 학습 내용과 논의 내용을 notion 에 작성하여 문서 관리

### 📙 Jira
- 프로젝트 일정 관리
- 이슈 발행 및 담당자 지정
  - 매주 스프린트 시작 전 백로그에 이슈 등록
  - 소요 시간 별 스토리 포인트 지정
  - 하위 작업 등록을 통한 세부 일정 관리
- 스프린트 번다운 차트 활용

### 📗 Git
- 팀 Notion에 Git 행동 강령과 Commit convention 작성, 공유
- 작업 브랜치 전략
```
master - fe-develop  - feature/이슈번호/기능
       - be-develop                  
       - data-develop                  
```

### 📕 요구사항 정의서
- 아이디어 기획 및 구체화 단계에서 요구사항 정의
- 우선순위 지정 후 기능 확정

### 📘 System Architecture
<img width="600" src="https://github.com/NoRuTnT/Dotori/assets/114069644/3d20700d-71ec-4cdf-8be4-af629ebcbad3" />

<a name="openapi"></a>
## 📈 Open API
서울시 교통빅데이터플랫폼에서 제공하는 Open API 사용
  - 신호기제어기 신호 정보 서비스: 신호제어기에서 발생하는 신호색상, 잔여시간
  - 교차로 Map 정보: 횡단보도의 위도/경도, 횡단보도의 길이

<a name="technology"></a>
## 🔑 기술 소개

### 🧭 Geofence
- 실제 위치에 기반해 가상의 경계를 생성
- 기반 서비스와 센서 기술을 결합하여 실시간으로 특정 지역에서의 사건을 감지하고 대응
  
  <img width="300" src="https://github.com/NoRuTnT/Dotori/assets/114069644/45e53796-5ac9-480d-9278-2769bb06ca49" />

### 📊 kafka Connect
- Kafka Connect는 데이터베이스, 키-값 저장소, 검색 인덱스 및 파일 시스템 간의 간단한 데이터 통합을 위한 중앙 집중식 데이터 허브 역할을 하는 Apache Kafka의 무료 오픈소스 구성요소로 해당 프로젝트에서는 api데이터소스에서 firebase로 데이터를 전달하기위한 파이프라인으로 사용하였다.

- 실시간 교통데이터를 다루기때문에 높은 처리량과 내결함성을 고려하여 **kafka connect** 데이터 파이프라인을 이용하기로 했다.

- 커넥트는 2가지 종류가 존재하는데 이를 아래와 같이 분류할 수 있다.  
  - 소스 -> 카프카 : 소스 커넥터(Source Connector)  
  - 카프카 -> 싱크 : 싱크 커넥터(Sink Connector)
  
  <img width="770" src="https://github.com/NoRuTnT/Dotori/assets/114069644/102c4418-0330-4dc9-a812-a773a30f2b2f" />

- kafka 클러스터에서는 데이터소스에서 kafka 토픽으로 데이터를 전달하는 source connector와, kafka 토픽에서 firebase로 데이터를 전달하는 sink connector 두개의 커스텀 커넥터를 구현했다.

  <img width="770" src="https://github.com/NoRuTnT/Dotori/assets/114069644/c22a0e96-a5b0-4684-aa08-a5e246890c83" />

- realtime database에 데이터가 전달되는 모습

  <img width="300" src="https://github.com/NoRuTnT/Dotori/assets/114069644/24788a84-8bb4-4a18-9d7e-1d6eaa0ac0ed" />


<a name="skills"></a>
## 🔨 개발 환경

|Teck stack ||version|
|------|---|---|
|Frontend|Flutter||
|Backend|SpringBoot |3.2.4|
|Data|SpringBoot |2.7.17|
||kafka |3.4.0|
||kafka-connect |3.4.0|
||shadowJar |8.1.1|
|Database|MySQL|8.0.32|
||RealtimeDatabase||
|Infra|Confluent kafka|7.2.1|
||Docker||
||Docker Hub||
||Nginx||
||AWS EC2||
||Prometheus||
||Promtail||
||Loki||
||Grafana||


<a name="installation"></a>
## 🚀 포팅 메뉴얼
[포팅 메뉴얼](https://lab.ssafy.com/s10-final/S10P31A207/-/blob/aaf44307db9b6e519f78350e60d70e315db3e4b0/exec/deploy.md)


<a name="folder"></a>
## 📂 폴더 구조
<details>
<summary>BackEnd 폴더 구조</summary>
<div markdown="1">

```
📦backend
 ┣ 📂gradle
 ┃ ┗ 📂wrapper
 ┃ ┃ ┣ 📜gradle-wrapper.jar
 ┃ ┃ ┗ 📜gradle-wrapper.properties
 ┣ 📂src
 ┃ ┣ 📂main
 ┃ ┃ ┣ 📂java
 ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┗ 📂becareful
 ┃ ┃ ┃ ┃ ┃ ┗ 📂backend
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂common
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜S3Config.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜FileController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂exception
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BadRequestException.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜BusinessException.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ForbiddenException.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜NotFoundException.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜UnauthorizedException.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dto
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜SuccessResponse.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂entity
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BaseTimeEntity.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂service
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜S3UploaderService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂domain
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂intersection
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂common
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜IntersectionController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dto
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CoordinateDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CrosswalkResponseDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜IntersectionResponseDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂entity
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜crosswalk.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜Intersection.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂repository
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CrosswalkRepository.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜IntersectionRepository.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂service
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜IntersectionService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂report
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂common
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂controller
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ReportController.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dto
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ReportResponseDto.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂entity
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜Report.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂repository
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ReportRepository.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂service
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ReportService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BackendApplication.java
 ┃ ┃ ┗ 📂resources
 ┃ ┃ ┃ ┣ 📜application-db.yml
 ┃ ┃ ┃ ┣ 📜application-s3.yml
 ┃ ┃ ┃ ┣ 📜application-security.yml
 ┃ ┃ ┃ ┗ 📜application.yml
 ┃ ┗ 📂test
 ┃ ┃ ┣ 📂java
 ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┗ 📂becareful
 ┃ ┃ ┃ ┃ ┃ ┗ 📂backend
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂report
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂controller
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ReportControllerTest.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜BackendApplicationTests.java
 ┃ ┃ ┗ 📂resources
 ┃ ┃ ┃ ┗ 📜application.yml
 ┣ 📜.gitignore
 ┣ 📜build.gradle
 ┣ 📜Dockerfile
 ┣ 📜gradlew
 ┣ 📜gradlew.bat
 ┗ 📜settings.gradle
```
</div>
</details>

<details>
<summary>FrontEnd폴더 구조</summary>
<div markdown="1">

```
📦frontend
 ┣ 📂.idea
 ┃ ┣ 📜frontend.iml
 ┃ ┣ 📜misc.xml
 ┃ ┣ 📜modules.xml
 ┃ ┣ 📜vcs.xml
 ┃ ┗ 📜workspace.xml
 ┗ 📂becarefulcrosswalk
 ┃ ┣ 📂android
 ┃ ┃ ┣ 📂app
 ┃ ┃ ┃ ┣ 📂src
 ┃ ┃ ┃ ┃ ┣ 📂debug
 ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┣ 📂main
 ┃ ┃ ┃ ┃ ┃ ┣ 📂kotlin
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂a207
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂becarefulcrosswalk
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MainActivity.kt
 ┃ ┃ ┃ ┃ ┃ ┣ 📂res
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂drawable
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜launch_background.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂drawable-v21
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜launch_background.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-hdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜traffic_lights.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-mdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xhdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xxhdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂mipmap-xxxhdpi
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ic_launcher.png
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂values
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜styles.xml
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂values-night
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜styles.xml
 ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┃ ┗ 📂profile
 ┃ ┃ ┃ ┃ ┃ ┗ 📜AndroidManifest.xml
 ┃ ┃ ┃ ┗ 📜build.gradle
 ┃ ┃ ┣ 📂gradle
 ┃ ┃ ┃ ┗ 📂wrapper
 ┃ ┃ ┃ ┃ ┗ 📜gradle-wrapper.properties
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┣ 📜build.gradle
 ┃ ┃ ┣ 📜gradle.properties
 ┃ ┃ ┗ 📜settings.gradle
 ┃ ┣ 📂assets
 ┃ ┃ ┗ 📂sounds
 ┃ ┃ ┃ ┣ 📜cameraFlash.mp3
 ┃ ┃ ┃ ┗ 📜half-pass.mp3
 ┃ ┣ 📂images
 ┃ ┃ ┣ 📜checked.png
 ┃ ┃ ┣ 📜fail.png
 ┃ ┃ ┣ 📜information.png
 ┃ ┃ ┣ 📜lamplight.png
 ┃ ┃ ┣ 📜map.png
 ┃ ┃ ┣ 📜report.png
 ┃ ┃ ┗ 📜traffic-lights.png
 ┃ ┣ 📂ios
 ┃ ┃ ┣ 📂Flutter
 ┃ ┃ ┃ ┣ 📜AppFrameworkInfo.plist
 ┃ ┃ ┃ ┣ 📜Debug.xcconfig
 ┃ ┃ ┃ ┗ 📜Release.xcconfig
 ┃ ┃ ┣ 📂Runner
 ┃ ┃ ┃ ┣ 📂Assets.xcassets
 ┃ ┃ ┃ ┃ ┣ 📂AppIcon.appiconset
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Contents.json
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-1024x1024@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-20x20@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-20x20@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-20x20@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-29x29@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-29x29@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-29x29@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-40x40@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-40x40@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-40x40@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-60x60@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-60x60@3x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-76x76@1x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Icon-App-76x76@2x.png
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Icon-App-83.5x83.5@2x.png
 ┃ ┃ ┃ ┃ ┗ 📂LaunchImage.imageset
 ┃ ┃ ┃ ┃ ┃ ┣ 📜Contents.json
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LaunchImage.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LaunchImage@2x.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜LaunchImage@3x.png
 ┃ ┃ ┃ ┃ ┃ ┗ 📜README.md
 ┃ ┃ ┃ ┣ 📂Base.lproj
 ┃ ┃ ┃ ┃ ┣ 📜LaunchScreen.storyboard
 ┃ ┃ ┃ ┃ ┗ 📜Main.storyboard
 ┃ ┃ ┃ ┣ 📜AppDelegate.swift
 ┃ ┃ ┃ ┣ 📜Info.plist
 ┃ ┃ ┃ ┗ 📜Runner-Bridging-Header.h
 ┃ ┃ ┣ 📂Runner.xcodeproj
 ┃ ┃ ┃ ┣ 📂project.xcworkspace
 ┃ ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┃ ┣ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┃ ┃ ┗ 📜WorkspaceSettings.xcsettings
 ┃ ┃ ┃ ┃ ┗ 📜contents.xcworkspacedata
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┗ 📂xcschemes
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Runner.xcscheme
 ┃ ┃ ┃ ┗ 📜project.pbxproj
 ┃ ┃ ┣ 📂Runner.xcworkspace
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┣ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┃ ┗ 📜WorkspaceSettings.xcsettings
 ┃ ┃ ┃ ┗ 📜contents.xcworkspacedata
 ┃ ┃ ┣ 📂RunnerTests
 ┃ ┃ ┃ ┗ 📜RunnerTests.swift
 ┃ ┃ ┗ 📜.gitignore
 ┃ ┣ 📂lib
 ┃ ┃ ┣ 📂env
 ┃ ┃ ┃ ┗ 📜env.dart
 ┃ ┃ ┣ 📂models
 ┃ ┃ ┃ ┣ 📜geofence_model.dart
 ┃ ┃ ┃ ┣ 📜intersection_model.dart
 ┃ ┃ ┃ ┗ 📜traffic_light_model.dart
 ┃ ┃ ┣ 📂provider
 ┃ ┃ ┃ ┣ 📜crosswalk_info.dart
 ┃ ┃ ┃ ┣ 📜current_page.dart
 ┃ ┃ ┃ ┣ 📜my_location_state.dart
 ┃ ┃ ┃ ┗ 📜report_data.dart
 ┃ ┃ ┣ 📂screens
 ┃ ┃ ┃ ┣ 📂report
 ┃ ┃ ┃ ┃ ┣ 📜report_fail_screen.dart
 ┃ ┃ ┃ ┃ ┣ 📜report_location_screen.dart
 ┃ ┃ ┃ ┃ ┣ 📜report_photo_screen.dart
 ┃ ┃ ┃ ┃ ┣ 📜report_stt_result_screen.dart
 ┃ ┃ ┃ ┃ ┣ 📜report_success_screen.dart
 ┃ ┃ ┃ ┃ ┗ 📜report_voice_screen.dart
 ┃ ┃ ┃ ┣ 📂userGuide
 ┃ ┃ ┃ ┃ ┣ 📜user_guide_screen.dart
 ┃ ┃ ┃ ┃ ┗ 📜user_guide_screen2.dart
 ┃ ┃ ┃ ┣ 📜landing_screen.dart
 ┃ ┃ ┃ ┣ 📜main_screen.dart
 ┃ ┃ ┃ ┗ 📜map_screen.dart
 ┃ ┃ ┣ 📂service
 ┃ ┃ ┃ ┣ 📜api_service.dart
 ┃ ┃ ┃ ┣ 📜my_direction.dart
 ┃ ┃ ┃ ┗ 📜my_location.dart
 ┃ ┃ ┣ 📂theme
 ┃ ┃ ┃ ┗ 📜colors.dart
 ┃ ┃ ┣ 📂utils
 ┃ ┃ ┃ ┣ 📜bottom_bar.dart
 ┃ ┃ ┃ ┗ 📜temp.dart
 ┃ ┃ ┣ 📂widgets
 ┃ ┃ ┃ ┣ 📜alert_dialog_widget.dart
 ┃ ┃ ┃ ┣ 📜button_widget.dart
 ┃ ┃ ┃ ┣ 📜guide_widget.dart
 ┃ ┃ ┃ ┣ 📜logo_widget.dart
 ┃ ┃ ┃ ┣ 📜modal_widget.dart
 ┃ ┃ ┃ ┣ 📜prompt_widget.dart
 ┃ ┃ ┃ ┗ 📜service_box_widget.dart
 ┃ ┃ ┣ 📜firebase_options.dart
 ┃ ┃ ┗ 📜main.dart
 ┃ ┣ 📂linux
 ┃ ┃ ┣ 📂flutter
 ┃ ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┃ ┣ 📜generated_plugins.cmake
 ┃ ┃ ┃ ┣ 📜generated_plugin_registrant.cc
 ┃ ┃ ┃ ┗ 📜generated_plugin_registrant.h
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┣ 📜main.cc
 ┃ ┃ ┣ 📜my_application.cc
 ┃ ┃ ┗ 📜my_application.h
 ┃ ┣ 📂macos
 ┃ ┃ ┣ 📂Flutter
 ┃ ┃ ┃ ┣ 📜Flutter-Debug.xcconfig
 ┃ ┃ ┃ ┣ 📜Flutter-Release.xcconfig
 ┃ ┃ ┃ ┗ 📜GeneratedPluginRegistrant.swift
 ┃ ┃ ┣ 📂Runner
 ┃ ┃ ┃ ┣ 📂Assets.xcassets
 ┃ ┃ ┃ ┃ ┗ 📂AppIcon.appiconset
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_1024.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_128.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_16.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_256.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_32.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_512.png
 ┃ ┃ ┃ ┃ ┃ ┣ 📜app_icon_64.png
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Contents.json
 ┃ ┃ ┃ ┣ 📂Base.lproj
 ┃ ┃ ┃ ┃ ┗ 📜MainMenu.xib
 ┃ ┃ ┃ ┣ 📂Configs
 ┃ ┃ ┃ ┃ ┣ 📜AppInfo.xcconfig
 ┃ ┃ ┃ ┃ ┣ 📜Debug.xcconfig
 ┃ ┃ ┃ ┃ ┣ 📜Release.xcconfig
 ┃ ┃ ┃ ┃ ┗ 📜Warnings.xcconfig
 ┃ ┃ ┃ ┣ 📜AppDelegate.swift
 ┃ ┃ ┃ ┣ 📜DebugProfile.entitlements
 ┃ ┃ ┃ ┣ 📜Info.plist
 ┃ ┃ ┃ ┣ 📜MainFlutterWindow.swift
 ┃ ┃ ┃ ┗ 📜Release.entitlements
 ┃ ┃ ┣ 📂Runner.xcodeproj
 ┃ ┃ ┃ ┣ 📂project.xcworkspace
 ┃ ┃ ┃ ┃ ┗ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┃ ┗ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┗ 📂xcschemes
 ┃ ┃ ┃ ┃ ┃ ┗ 📜Runner.xcscheme
 ┃ ┃ ┃ ┗ 📜project.pbxproj
 ┃ ┃ ┣ 📂Runner.xcworkspace
 ┃ ┃ ┃ ┣ 📂xcshareddata
 ┃ ┃ ┃ ┃ ┗ 📜IDEWorkspaceChecks.plist
 ┃ ┃ ┃ ┗ 📜contents.xcworkspacedata
 ┃ ┃ ┣ 📂RunnerTests
 ┃ ┃ ┃ ┗ 📜RunnerTests.swift
 ┃ ┃ ┗ 📜.gitignore
 ┃ ┣ 📂sounds
 ┃ ┃ ┗ 📜all-pass.mp3
 ┃ ┣ 📂test
 ┃ ┃ ┗ 📜widget_test.dart
 ┃ ┣ 📂web
 ┃ ┃ ┣ 📂icons
 ┃ ┃ ┃ ┣ 📜Icon-192.png
 ┃ ┃ ┃ ┣ 📜Icon-512.png
 ┃ ┃ ┃ ┣ 📜Icon-maskable-192.png
 ┃ ┃ ┃ ┗ 📜Icon-maskable-512.png
 ┃ ┃ ┣ 📜favicon.png
 ┃ ┃ ┣ 📜index.html
 ┃ ┃ ┗ 📜manifest.json
 ┃ ┣ 📂windows
 ┃ ┃ ┣ 📂flutter
 ┃ ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┃ ┣ 📜generated_plugins.cmake
 ┃ ┃ ┃ ┣ 📜generated_plugin_registrant.cc
 ┃ ┃ ┃ ┗ 📜generated_plugin_registrant.h
 ┃ ┃ ┣ 📂runner
 ┃ ┃ ┃ ┣ 📂resources
 ┃ ┃ ┃ ┃ ┗ 📜app_icon.ico
 ┃ ┃ ┃ ┣ 📜CMakeLists.txt
 ┃ ┃ ┃ ┣ 📜flutter_window.cpp
 ┃ ┃ ┃ ┣ 📜flutter_window.h
 ┃ ┃ ┃ ┣ 📜main.cpp
 ┃ ┃ ┃ ┣ 📜resource.h
 ┃ ┃ ┃ ┣ 📜runner.exe.manifest
 ┃ ┃ ┃ ┣ 📜Runner.rc
 ┃ ┃ ┃ ┣ 📜utils.cpp
 ┃ ┃ ┃ ┣ 📜utils.h
 ┃ ┃ ┃ ┣ 📜win32_window.cpp
 ┃ ┃ ┃ ┗ 📜win32_window.h
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┗ 📜CMakeLists.txt
 ┃ ┣ 📜.gitignore
 ┃ ┣ 📜.metadata
 ┃ ┣ 📜analysis_options.yaml
 ┃ ┣ 📜pubspec.lock
 ┃ ┣ 📜pubspec.yaml
 ┃ ┗ 📜README.md
```
</div>
</details>

<details>
<summary>Data 폴더 구조</summary>
<div markdown="1">

```
📦data
 ┣ 📂gradle
 ┃ ┗ 📂wrapper
 ┃ ┃ ┣ 📜gradle-wrapper.jar
 ┃ ┃ ┗ 📜gradle-wrapper.properties
 ┣ 📂sink
 ┃ ┣ 📂src
 ┃ ┃ ┗ 📂main
 ┃ ┃ ┃ ┗ 📂java
 ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┗ 📂sinkconnector
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TrafficLightSinkConnectorConfig.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dataset
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TrafficSignalData.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜CustomLocalDateTimeDeserializer.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜FirebaseAdmin.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TrafficLightSinkConnector.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TrafficLightSinkTask.java
 ┃ ┗ 📜build.gradle
 ┣ 📂source
 ┃ ┣ 📂src
 ┃ ┃ ┗ 📂main
 ┃ ┃ ┃ ┗ 📂java
 ┃ ┃ ┃ ┃ ┗ 📂com
 ┃ ┃ ┃ ┃ ┃ ┗ 📂sourceconnector
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂config
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TrafficLightSourceConnectorConfig.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂dataset
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TrafficSignalData.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CustomLocalDateTimeDeserializer.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜DataService.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TrafficLightSourceConnector.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜TrafficLightSourcePartition.java
 ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜TrafficLightSourceTask.java
 ┃ ┗ 📜build.gradle
 ┣ 📜.gitignore
 ┣ 📜application.yml
 ┣ 📜build.gradle
 ┣ 📜Dockerfile
 ┣ 📜gradlew
 ┣ 📜gradlew.bat
 ┗ 📜settings.gradle
```
</div>
</details>
