import 'package:flutter/material.dart';


class MetodoMensagem{
  void mensagem(String texto, context){
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('${texto}')));
  }
}