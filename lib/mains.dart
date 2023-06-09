// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nu_clone/colors/stuffs.dart';
import 'package:nu_clone/widgets/cards.dart';
import 'package:nu_clone/widgets/separador.dart';
import 'package:nu_clone/widgets/transacao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  PreferredSize _appBar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: Container(
        decoration: BoxDecoration(color: primaria),
        child: Column(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: _appBar(context),
        body: Column(
          children: [
            Container(
              color: primaria,
              height: 130,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: secundaria,
                                borderRadius: BorderRadius.circular(45),
                              ),
                              width: 45,
                              height: 45,
                              child: Center(
                                child: Icon(Icons.add_photo_alternate_outlined),
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.visibility_outlined),
                              Icon(Icons.help_outline_rounded),
                              Icon(Icons.record_voice_over_outlined),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Olá, Konaly",
                      style: h1Style,
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: screenHeight * .8,
              width: screenWidth * 1,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Conta",
                                        style: h1Style,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'R\$ 35.450,38',
                                  style: h1Style,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 1,
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: transacoes.map((trans) {
                                  return Transacao(
                                    icone: trans.icone,
                                    titulo: trans.titulo,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          CardS(
                            icone: Icon(Icons.credit_card),
                            texto: "Meus cartões",
                          ),
                          SizedBox(
                            width: screenWidth * 1,
                            height: 90,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: avisos.map((aviso) {
                                  return CardL(texto: aviso.texto);
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Separador(),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cartão de crédito",
                                  style: h1Style,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text("Fatura atual"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "R\$ 0,00",
                              style: h1Style,
                            ),
                          ),
                          Text("Limite disponível de R\$ 10.000,00")
                        ],
                      ),
                    ),
                    Separador(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Acompanhe também",
                        style: h1Style,
                      ),
                    ),
                    CardS(
                      icone: Icon(Icons.currency_exchange_outlined),
                      texto: "Assistente de pagamento",
                    ),
                    Separador(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        bottom: 15,
                      ),
                      child: Text(
                        "Descubra mais",
                        style: h1Style,
                      ),
                    ),
                    SizedBox(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: descubraMais.map((descubra) {
                            return CardImagem(
                                image: descubra.imagem,
                                texto: descubra.titulo,
                                descricao: descubra.descricao,
                                botao: descubra.botao);
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
