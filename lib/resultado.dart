import 'dart:math';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String valor;

  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImg1;
    var caminhoImg2;
    var caminhoImg3;

    // Define a primeira imagem
    if (widget.valor == "cara") {
      caminhoImg1 = "imagens/moeda_cara.png";
    } else {
      caminhoImg1 = "imagens/moeda_coroa.png";
    }

    // Define a segunda imagem
    if (widget.valor == "cara") {
      caminhoImg2 = "imagens/moeda_coroa.png"; // Alterna a imagem
    } else {
      caminhoImg2 = "imagens/moeda_cara.png";
    }

    // Define a terceira imagem
    if (Random().nextBool()) {
      caminhoImg3 = "imagens/moeda_cara.png"; // Escolha aleatória
    } else {
      caminhoImg3 = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  caminhoImg1,
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 10),
                Image.asset(
                  caminhoImg2,
                  width: 102,
                  height: 102,
                ),
                SizedBox(width: 10),
                Image.asset(
                  caminhoImg3,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
