import 'package:flutter/material.dart';
import 'Conteudo.dart';

final List<Conteudo> conteudo = [
  Conteudo(
      titulo: 'Formação e Entrada na Nintendo',
      imagem: '../img/imgShigeruFormacao.jpg',
      descricao:'Shigeru possui uma incrível aptidão para as artes o fez entrar na Academia de Artes Industriais e Manuais Kanazawa Munice em 1970 e, mesmo que afirmando que os estudos não estavam em primeiro lugar se formou cinco anos depois. Mesmo com o diploma em mãos, Shigeru não conseguia emprego na área, sua primeira oportunidade veio quando seu pai arranjou uma entrevista com Hiroshi Yamauchi, o presidente da Nintendo na época, que o contratou como artista e o colocou como um aprendiz no departamento de planejamento. Passando um bom tempo criando o exterior de máquinas de arcades, até começar a criar personagens, coisa que não pararia mais de fazer.',
      corFundo: '../img/fundoVerde.jpg',
      arredondamento: 20),
  Conteudo(
      imagem: '../img/imgDKGameplay.png',
      subtitulo: 'O Primeiro Sucesso de Miyamoto',
      descricao:'Em 1979, A Nintendo lançou Radar Scope, arcade desenhado por Miyamoto. A NOA (Nintendo of America) havia solicitado três mil unidades da máquina, mas por diversos problemas o jogo foi grande fracasso deixando até duas mil unidades do produto estocados. Minoru Arakawa (presidente da NOA), pediu a Yamauchi um novo jogo, para evitar o prejuízo com as maquinas paradas. O presidente então pediu para os funcionários ideias de um jogo que pudesse ser utilizado em Arcade. E novato Shigeru Miyamoto trouxe a proposta que mais agradou. Trabalhando sob a supervisão de Gunpei Yokoi (Criador do GameBoy) eles levariam a Nintendo a outro patamar. \n Miyamoto afirmou que o Radar Scope era muito ultrapassado e viu a necessidade de ir atrás de mais informações de programação, hardware e eletrônicos. A partir do acontecido decidiu trabalhar em um jogo usando o personagem Popeye, porém teve problemas com direitos autorais e partiu para outra ideia. Uma ideia que revolucionária os videogames e marcaria personagens na história, logo em substituição da ideia de Popeye criou Donkey Kong (1981), um jogo de plataforma onde JumpMan (nome provisório de Mario) tinha que salvar sua namorada Pauline das mãos de Donkey Kong. \n Com o sucesso, Miyamoto foi escalado para produzir as sequências Donkey Kong Jr e Donkey Kong 3 e a participar de outras produções como Excitebike e Devil World.',
      arredondamento: 0),
  Conteudo(
      imagem: '../img/imgShigeruSmile.jpg',
      subtitulo: 'Sucesso de Shigeru Miyamoto na Nintendo',
      descricao:'Novos games vão sendo criados até que em 1996, Super Mario, até então um personagem de sprite 2D, ganha pela primeira vez um jogo totalmente em 3D, com um vasto mundo a ser explorado. Era lançado então o Super Mario 64 para o Nintendo 64, novo console de 64 bits da Nintendo. \n Mario Kart 64, Star Fox 64, Yoshi Story, 1080° Snowboarding e F-Zero X foram alguns dos jogos desenvolvidos para o novo console, até que em 1998 surge o que para muitos é considerado como o melhor jogo de videogame já feito até hoje: The Legend of Zelda: Ocarina of Time. Nesta versão do game, Shigeru e seus colaboradores conseguem fazer uma transição de Hyrule e de seus personagens do 2D para o 3D.',
      arredondamento: 0,
      imagem2: '../img/imgZelda2.png'),
];

class Nintendo extends StatelessWidget {
  const Nintendo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 29),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 52, 136, 26),
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
                              const SizedBox(height: 20),
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
                              const SizedBox(height: 20),
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
