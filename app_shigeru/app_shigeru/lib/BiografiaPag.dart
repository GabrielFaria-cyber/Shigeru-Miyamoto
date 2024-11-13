import 'package:flutter/material.dart';
import 'Conteudo.dart';

final List<Conteudo> conteudo = [
  Conteudo(
      titulo: 'Quem é Shigeru Miyamoto?',
      imagem: '../img/imgShigeruL.jpg',
      descricao:'Shigeru Miyamoto, nasceu em 16 de novembro de 1952 na cidade japonesa de Sonobe, Kyoto. É um designer, produtor e diretor de videogames, reconhecido como uma das figuras mais influentes na indústria dos jogos eletrônicos. Ele é conhecido por ser o criador de algumas das franquias mais icônicas da Nintendo, como Super Mario, The Legend of Zelda, Donkey Kong e Pikmin.',
      corFundo: '../img/fundoVermelho2.jpg',
      arredondamento: 20),
  Conteudo(
      imagem: '../img/imgShigeruGames.jpg',
      subtitulo: 'A infância que inspirou os clássicos',
      descricao:'Ele é o segundo filho do casal Lijake Miyamoto e Hinako Aruha. Desde pequeno gostava de desenhar, pintar e por viver em uma cidade tipicamente rural Shigeru explorava as áreas próximas de sua casa. Mais tarde, em uma entrevista, ele confessou ter baseado grande parte do jogo "The Legend of Zelda" em explorações nas cavernas da região. Uma outra inspiração de infância curiosa foi a para o "chain chomp", monstro presente em Super Mario Bros. Segundo o mesmo, sua inspiração foi a de um cão da casa vizinha do qual ele tinha medo e que vivia sempre acorrentado.',
      arredondamento: 0),
  Conteudo(
      imagem: '../img/imgShigeruFama.jpg',
      subtitulo: 'Mario e Zelda: os dois maiores sucessos de Shigeru Miyamoto',
      descricao:'O próximo grande jogo seria Mario Bros (1983), no qual utilizaria Jumpman, trocando o nome para Mario e dando-lhe um irmão chamado Luigi. Depois de Mario Bros. Miyamoto trabalhou em diversos games, como Ice Climber e Kid Icarus ao lado de Yokoi.Após a chegada do Famicon, também chamado de NES (Nintendo Entertainment System). Miyamoto trouxe Super Mario Bros. \n Ele inovava por conta com um foco maior na gameplay, incomum aos jogos da época.Zelda foi um grande sucesso entre os jogadores de action RPGs, sendo o primeiro título da "nova geração de consoles" a vender mais de um milhão de unidades nos Estados Unidos. Além disso, ele tinha um sistema de jogo revolucionário para a época, pois trazia uma história não-linear, em que o jogador tinha de explorar os lugares, resolver quebra-cabeças e ainda dependia de estratégias para vencer os chefões. Os primeiros jogos da série foram lançados para o Nintendo e Game Boy, saindo na próxima geração para o Super Nintendo The Legend of Zelda: A Link to the Past.Essa experiência de Zelda, ele destaca as memórias de infância, em que sempre tinha a emoção de uma nova descoberta. Esses jogos e suas narrativas mais elaborados atendiam em cheio a um novo público, que esperava títulos que oferecessem algo mais que apenas acúmulo de pontos. Ele também trabalhou em duas continuações para o NES: Zelda II: The Adventure of Link e Super Mario Bros 2, ambos de 1987.',
      arredondamento: 0,
      imagem2: '../img/imgMario.png'),
];

class Biografia extends StatelessWidget {
  const Biografia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 29),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 231, 15, 0),
          size: 40,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                conteudo[0].titulo!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "HappySchool"),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage(conteudo[0].corFundo!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: conteudo.map((_conteudo) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: (Radius.circular(_conteudo.arredondamento)),
                            ),
                            image: DecorationImage(
                              image: AssetImage(_conteudo.imagem),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              if (_conteudo.subtitulo != null)
                                Text(
                                  _conteudo.subtitulo!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              Text(
                                _conteudo.descricao,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (_conteudo.imagem2 != null)
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Image(
                              image: AssetImage(_conteudo.imagem2!),
                              height: 150,
                            ),
                          ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
