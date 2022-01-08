import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';

void main() {
  runApp(const AppWidget());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF392EF),
        title: const Text(
          "Frases do Dia",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFF8F6CE6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/Group%2010239.png?alt=media&token=a6a0db77-a870-4125-a659-d000a6f0feb2"),
            Center(
              child: buildText(),
            ),
            const Text(
              "Frase aleatoria Frase aleatoria",
              style: TextStyle(
                color: Color(0xffF392EF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildText() => RichText(
      text: const TextSpan(children: [
        TextSpan(
          text: "Frases do ",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        TextSpan(
          text: "Dia",
          style: TextStyle(
            color: Color(0xffF392EF),
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ]),
    );
