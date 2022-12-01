import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playaudio(int audio) {
    final player = AudioCache();
    player.load('$audio-so.mp3');
  }

  Expanded audiobutton(
      {required int audioNum,
      required String buttonText,
      required Color buttonColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () {
            playaudio(audioNum);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Row(
              children: [
                Icon(Icons.headphones, size: 40, color: buttonColor),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  buttonText,
                  style: TextStyle(fontSize: 40, color: buttonColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            audiobutton(
                audioNum: 1,
                buttonText: 'سورة البقرة',
                buttonColor: Colors.blue),
            audiobutton(
                audioNum: 2,
                buttonText: 'اية الكورسي',
                buttonColor: Colors.red),
            audiobutton(
                audioNum: 3,
                buttonText: 'سورة الكافرون',
                buttonColor: Colors.cyan),
            audiobutton(
                audioNum: 4,
                buttonText: 'سورة النصر',
                buttonColor: Colors.black),
            audiobutton(
                audioNum: 5,
                buttonText: 'سورة المسد',
                buttonColor: Colors.brown),
            audiobutton(
                audioNum: 6,
                buttonText: 'سورة الاخلاص',
                buttonColor: Colors.green),
            audiobutton(
                audioNum: 7,
                buttonText: 'سورة الفلق',
                buttonColor: Colors.indigo),
            audiobutton(
                audioNum: 8,
                buttonText: 'سورة الناس',
                buttonColor: Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}
