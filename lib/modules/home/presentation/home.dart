import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Você precisa fazer aquilo que pensa que não é capaz de fazer.",
    "Lute com determinação, abrace a vida com paixão, perca com classe e vença com ousadia, porque o mundo pertence a quem se atreve e a vida é muito para ser insignificante.",
    "Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez.",
    "Quando uma criatura humana desperta para um grande sonho e sobre ele lança toda a força de sua alma, todo o universo conspira a seu favor.",
    "Se você quer um pedacinho do paraíso, acredite em Deus. Mas se você quer conquistar o mundo, acredite em você, porque Deus já te deu tudo o que você precisa para você vencer.",
    "Acredite, vai acontecer qualquer dia, qualquer hora, alguém irá te enxergar, mesmo que você esteja sem maquiagem, suada, desarrumada, descabelada. O famoso homem da sua vida vai te enxergar... Confie em mim, ou em você, né.",
    "Se fracassar, ao menos que fracasse ousando grandes feitos, de modo que a sua postura não seja nunca a dessas almas frias e tímidas que não conhecem nem a vitória nem a derrota.",
  ];
  var _fraseGerada = "";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF392EF),
        title: const Text(
          "Frases do Dia",
          textAlign: TextAlign.center,
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
            SizedBox(
              height: 20,
            ),
            Image.network(
                "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/Group%2010239.png?alt=media&token=a6a0db77-a870-4125-a659-d000a6f0feb2"),
            Center(
              child: buildText(),
            ),
            Text(
              "Clique abaixo para gerar uma nova frase!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffF392EF),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: _gerarFrase,
              icon: const Icon(
                Icons.cached_rounded,
                color: Color(0xFF8F6CE6),
              ),
              label: const Text(
                "Nova Frase",
                style: TextStyle(
                  color: Color(0xFF8F6CE6),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffF392EF),
                elevation: 15,
                shadowColor: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Text(
                _fraseGerada,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
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
