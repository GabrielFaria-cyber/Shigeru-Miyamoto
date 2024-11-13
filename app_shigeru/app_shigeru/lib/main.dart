import 'dart:ui';

import 'package:app_shigeru/BiografiaPag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Inicio.dart';
import 'BiografiaPag.dart';
import 'NintendoPag.dart';
import 'TrabalhosPag.dart';

final List<Inicio> inicio = [
  Inicio(
    titulo: '../img/tituloInicio.png',
    textoBotao: 'Biografia',
    caminho: const Biografia(),
    corBotao: const Color.fromARGB(255, 231, 15, 0),
    imgBotao: '../img/imgKong.png',
    posicaoImgBotao: -480,
  ),
  Inicio(
    textoBotao: 'Trabalhos',
    caminho: const Trabalhos(),
    corBotao: const Color.fromARGB(255, 247, 201, 0),
  ),
  Inicio(
    textoBotao: 'Nintendo',
    caminho: const Nintendo(),
    corBotao: const Color.fromARGB(255, 52, 136, 26),
    imgBotao: '../img/imgZelda.png',
    posicaoImgBotao: 40,
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 29),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(inicio[0].titulo!),
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(height: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: inicio.map((inicio) {
                  return Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                // Cor do texto para ambos os estados
                                backgroundColor: inicio.corBotao,
                                fixedSize: Size(
                                    MediaQuery.of(context).size.width * 0.6,
                                    100),
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                shadowColor: Colors.black,
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => inicio.caminho,
                                ),
                              );
                            },
                            child: Text(
                              inicio.textoBotao,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontFamily: "HappySchool",
                              ),
                            ),
                          ),
                          if (inicio.imgBotao != null)
                            Positioned(
                              top:
                                  -20, // Ajuste este valor para posicionar a imagem como desejar
                              left: -200,
                              right: inicio.posicaoImgBotao,
                              child: Center(
                                child: Image(
                                  image: AssetImage(inicio.imgBotao!),
                                  height: 140,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
