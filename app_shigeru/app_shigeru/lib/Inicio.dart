import 'package:flutter/material.dart';

class Inicio {
  final String? titulo;
  final String? imgBotao;
  final double? posicaoImgBotao;
  final String textoBotao;
  final Widget caminho;
  final Color corBotao;

  Inicio({
    this.titulo,
    this.imgBotao,
    this.posicaoImgBotao,
    required this.textoBotao,
    required this.caminho,
    required this.corBotao,
  });
}
