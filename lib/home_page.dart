import 'package:flutter/material.dart';
import 'cor.dart';
import 'funcao.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    TextEditingController _controlador = TextEditingController();
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text('Meu app'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),

              controller: _controlador,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: widthScreen,
            color: Cor.corGeral,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Cor.corGeral),
                  elevation: WidgetStateProperty.all(0),
                ),
                onPressed: () {
                  MetodoMensagem().mensagem(_controlador.text, context);
                }, child: Text('Enviar',style: TextStyle(color: Colors.white))),
          ),
          Divider(thickness: 1,),
          SizedBox(height: 32,),

          GestureDetector(

              child: Text('Me clique')),
        ],
      ),
    );
  }
}


