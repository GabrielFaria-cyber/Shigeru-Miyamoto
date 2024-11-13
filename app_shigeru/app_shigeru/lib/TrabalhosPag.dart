import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'Trabalho.dart';

final List<Trabalho> trabalho = [
  Trabalho(
    titulo: 'Jogos mais famosos',
    nome: 'Donkey Kong \n 1981',
    imagem: '../img/imgKong.png',
    descricao:'Donkey Kong é um jogo de arcade desenvolvido pela Nintendo, lançado em 1981. É um primeiro exemplo do gênero plataforma, uma vez que a jogabilidade foca na movimentação do personagem principal por uma série de plataformas enquanto desvia de obstáculos.',
    corFundo: '../img/fundoLaranja.jpg',
  ),
  Trabalho(
    nome: 'Mario Bros \n 1983',
    imagem: '../img/imgMario.png',
    descricao:'Mario Bros é um dos jogos mais icônicos da Nintendo, lançado originalmente em 1983. O jogador controla Mario, que deve derrotar diversos inimigos em uma série de fases ao longo do jogo. Mario Bros se destaca por sua simplicidade e charme, tendo introduzido elementos que se tornariam clássicos na franquia Mario e inspirariam inúmeros jogos de plataforma.',
    corFundo: '../img/fundoVermelho.jpg',
  ),
  Trabalho(
    nome: 'The Legend Of Zelda \n 1986',
    imagem: '../img/imgZelda.png',
    descricao:'The Legend of Zelda é um dos jogos mais influentes e reverenciados da Nintendo, lançado em 1986. O jogo pertence ao gênero de ação, aventura e rpg, com elementos de exploração e resolução de quebra-cabeças, além de batalhas com inimigos. O jogador controla Link, um herói em missão para resgatar a Princesa Zelda e derrotar o vilão Ganon para salvar o reino de Hyrule.',
    corFundo: '../img/fundoVerde.jpg',
  ),
];

class Trabalhos extends StatelessWidget {
  const Trabalhos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 29),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 247, 201, 0),
          size: 40,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              trabalho[0].titulo!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "HappySchool",
              ),
            ),
            const SizedBox(height: 70),
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 1.4,
                enlargeCenterPage: true,
                aspectRatio: 12 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
              items: trabalho.map((trabalho) {
                return Column(
                  children: [
                    //Card com conteudo a partir daqui
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 1.2,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        image: DecorationImage(
                          image: AssetImage(trabalho.corFundo),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(trabalho.imagem),
                            height: 260,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.6,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  trabalho.nome,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontFamily: "HappySchool",
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  trabalho.descricao,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
