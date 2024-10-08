import 'package:becarefulcrosswalk/provider/report_data.dart';
import 'package:becarefulcrosswalk/screens/report/report_fail_screen.dart';
import 'package:becarefulcrosswalk/screens/report/report_success_screen.dart';
import 'package:becarefulcrosswalk/screens/report/report_voice_screen.dart';
import 'package:becarefulcrosswalk/theme/colors.dart';
import 'package:becarefulcrosswalk/utils/bottom_bar.dart';
import 'package:becarefulcrosswalk/widgets/alert_dialog_widget.dart';
import 'package:becarefulcrosswalk/widgets/button_widget.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReportSttResultScreen extends StatelessWidget {
  final String text;

  const ReportSttResultScreen({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: black,
        title: const Text(
          "불편신고(3/3)",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialogWidget();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          children: [
            Center(
              child: EasyRichText(
                '말씀하신 내용이 맞다면\n신고하기 버튼을 눌러주세요',
                textAlign: TextAlign.center,
                patternList: [
                  EasyRichTextPattern(
                    targetString: '신고하기',
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
                defaultStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  // color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: text == ''
                      ? const Text(
                          "인식된 텍스트가 없습니다\n큰소리로 말씀해주세요",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : Text(
                          text,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            letterSpacing: 1,
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    text: "다시 말하기",
                    backgroundColor: lightBlue,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReportVoiceScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    text: "신고하기",
                    backgroundColor: lightRed,
                    onPressed: () async {
                      Provider.of<ReportData>(context, listen: false)
                          .setReportText(text);
                      bool result =
                          await Provider.of<ReportData>(context, listen: false)
                              .sendReportToServer();
                      if (result) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReportSuccessScreen(),
                          ),
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReportFailScreen(
                                errorMessage: '신고 내용 접수 중\n오류가 발생했습니다'),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
