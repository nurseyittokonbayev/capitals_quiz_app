import 'package:capitals_app/components/my_button.dart';
import 'package:capitals_app/components/my_tapped_button.dart';
import 'package:capitals_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool buttonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/other/brain.png"),
                    fit: BoxFit.cover),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: Listener(
                onPointerUp: (_) => setState(() => buttonPressed = false),
                onPointerDown: (_) => setState(
                  () {
                    buttonPressed = true;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
                child: buttonPressed
                    ? const MyTappedButton(text: 'Начать')
                    : const MyButton(text: 'Начать'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
