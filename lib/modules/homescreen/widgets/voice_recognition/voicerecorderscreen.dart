// ignore_for_file: avoid_print, sized_box_for_whitespace, library_private_types_in_public_api, unused_element

import 'package:bucket/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speech/flutter_speech.dart';

class VoiceSearchingDemo extends StatefulWidget {
  const VoiceSearchingDemo({Key? key}) : super(key: key);

  @override
  _VoiceSearchingDemoState createState() => _VoiceSearchingDemoState();
}

class _VoiceSearchingDemoState extends State<VoiceSearchingDemo> {
  TextEditingController controller = TextEditingController();
  late SpeechRecognition _speech;

  bool _speechRecognitionAvailable = false;
  bool _isListening = false;

  String transcription = '';

  //String _currentLocale = 'en_US';
  Language selectedLang = languages.first;

  @override
  initState() {
    super.initState();
    activateSpeechRecognizer();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  void activateSpeechRecognizer() {
    print('_MyAppState.activateSpeechRecognizer... ');
    _speech = SpeechRecognition();
    _speech.setAvailabilityHandler(onSpeechAvailability);
    _speech.setRecognitionStartedHandler(onRecognitionStarted);
    _speech.setRecognitionResultHandler(onRecognitionResult);
    _speech.setRecognitionCompleteHandler(onRecognitionComplete);
    _speech.setErrorHandler(errorHandler);
    _speech.activate('en_US').then((res) {
      setState(() => _speechRecognitionAvailable = res);
    });
  }

  Widget _buildButton({required String label, VoidCallback? onPressed}) =>
      Container(
          height: 140,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CircleAvatar(
                radius: 60,
                child: TextButton(
                    onPressed: onPressed,
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ))),
          ));

  void start() => _speech.activate(selectedLang.code).then((_) {
        return _speech.listen().then((result) {
          print('_MyAppState.start => result $result');
          setState(() {
            _isListening = result;
          });
        });
      });

  void cancel() =>
      _speech.cancel().then((_) => setState(() => _isListening = false));

  void stop() => _speech.stop().then((_) {
        setState(() => _isListening = false);
      });

  void onCurrentLocale(String locale) {
    print('_MyAppState.onCurrentLocale... $locale');
    setState(
        () => selectedLang = languages.firstWhere((l) => l.code == locale));
  }

  void onSpeechAvailability(bool result) =>
      setState(() => _speechRecognitionAvailable = result);

  void onRecognitionStarted() {
    setState(() => _isListening = true);
  }

  void onRecognitionResult(String text) {
    print('_MyAppState.onRecognitionResult... $text');
    setState(() => controller.text = text);
  }

  void onRecognitionComplete(String text) {
    print('_MyAppState.onRecognitionComplete... $text');
    setState(() => _isListening = false);
  }

  void errorHandler() => activateSpeechRecognizer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.grey.shade200,
                        child: TextField(
                          controller: controller,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder()),
                        ))),
                Text(transcription),
                _buildButton(
                  onPressed: _speechRecognitionAvailable && !_isListening
                      ? () => start()
                      : null,
                  label: _isListening
                      ? 'Listening...'
                      : 'Listen (${selectedLang.code})',
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'Try Saying Something',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  List<CheckedPopupMenuItem<Language>> get _buildLanguagesWidgets => languages
      .map((l) => CheckedPopupMenuItem<Language>(
            value: l,
            checked: selectedLang == l,
            child: Text(l.name),
          ))
      .toList();

  void _selectLangHandler(Language lang) {
    setState(() => selectedLang = lang);
  }
}
