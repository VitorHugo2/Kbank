// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Color primaria = Color.fromARGB(255, 74, 3, 102);
Color secundaria = Color.fromARGB(255, 116, 21, 153);

TextStyle h1Style = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
TextStyle h2Style = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle h2PStyle = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 172, 172, 172));

class ModelTransacao {
  Icon icone;
  String titulo;
  ModelTransacao({required this.icone, required this.titulo});
}

class ModelAvisos {
  Text texto;
  ModelAvisos({required this.texto});
}

class ModelDescubraMais {
  String imagem;
  String titulo;
  String descricao;
  String botao;

  ModelDescubraMais(
      {required this.botao,
      required this.descricao,
      required this.imagem,
      required this.titulo});
}

List transacoes = [
  ModelTransacao(
    icone: const Icon(Icons.pix),
    titulo: "Área Pix",
  ),
  ModelTransacao(
    icone: const Icon(Icons.currency_exchange),
    titulo: "Transferir",
  ),
  ModelTransacao(
    icone: const Icon(Icons.phone_android),
    titulo: "Recarga de celular",
  ),
  ModelTransacao(
    icone: const Icon(Icons.payment),
    titulo: "Cobrar",
  ),
  ModelTransacao(
    icone: const Icon(Icons.savings_outlined),
    titulo: "Caixinhas",
  ),
  ModelTransacao(
      icone: const Icon(Icons.account_balance_wallet_outlined),
      titulo: "Depositar"),
  ModelTransacao(
    icone: const Icon(Icons.favorite_border),
    titulo: "Doação",
  ),
  ModelTransacao(
    icone: const Icon(Icons.signal_cellular_alt),
    titulo: "Investir",
  ),
  ModelTransacao(
    icone: const Icon(Icons.public),
    titulo: "Transferir Internac.",
  ),
];

List avisos = [
  ModelAvisos(
    texto: Text.rich(
      TextSpan(
        text: "Concorra a premios com o ",
        children: [
          TextSpan(
            text: "KBANK",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  ),
  ModelAvisos(
    texto: Text.rich(
      TextSpan(
        text: "O ",
        children: [
          TextSpan(
            text: "Débito automático ",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
          TextSpan(text: "do KB já está disponivel"),
        ],
      ),
    ),
  ),
  ModelAvisos(
    texto: Text.rich(
      TextSpan(
        text: "Convide amigos para o KBANK ",
        style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "e desbloqueie brasões incríveis",
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
          )
        ],
      ),
    ),
  ),
];

List descubraMais = [
  ModelDescubraMais(
    imagem: 'assets/images/warning.jpg',
    titulo: "Proteja-se de golpes",
    descricao: "O Kbank não entra em contato solicitando dados de sua conta",
    botao: "Saiba Mais",
  ),
  ModelDescubraMais(
    imagem: 'assets/images/familia.jpg',
    titulo: "Seguro de vida",
    descricao: "Cuide de quem você ama de um jeito simples e que acabe n...",
    botao: "Conhecer",
  ),
  ModelDescubraMais(
    imagem: 'assets/images/amigos.jpg',
    titulo: "Indique o KB para amigos",
    descricao: "Espalhe como é simples estar no controle",
    botao: "Indicar amigo",
  ),
  ModelDescubraMais(
    imagem: 'assets/images/wpp.jpg',
    titulo: "Whatsapp",
    descricao: "Pagamentos seguros, rápidos e sem tarifa. A experiência ...",
    botao: "Quero conhecer",
  ),
  ModelDescubraMais(
    imagem: 'assets/images/kid.jpg',
    titulo: "Conta para menores de 18",
    descricao: "Solicite a conta para seus filhos a partir de 12 anos.",
    botao: "Quero conhecer",
  ),
];
