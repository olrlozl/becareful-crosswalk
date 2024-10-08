import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PromptWidget extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final double fontSize;
  final FontWeight fontWeight;

  const PromptWidget({
    Key? key,
    required this.message,
    this.backgroundColor = const Color(0xFF48A3F7),
    this.fontSize = 20,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  _PromptWidgetState createState() => _PromptWidgetState();
}

class _PromptWidgetState extends State<PromptWidget> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    flutterTts.setLanguage("ko-KR");
    flutterTts.setSpeechRate(0.5);
    speak(widget.message);
  }

  @override
  void didUpdateWidget(covariant PromptWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.message != oldWidget.message) {
      speak(widget.message);
    }
  }

  void speak(String message) async {
    await flutterTts.awaitSpeakCompletion(true);
    if (message.isNotEmpty) {
      await flutterTts.speak(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: widget.backgroundColor,
      child: Text(
        widget.message,
        style: TextStyle(
          fontSize: widget.fontSize,
          color: Colors.white,
          fontWeight: widget.fontWeight,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}
