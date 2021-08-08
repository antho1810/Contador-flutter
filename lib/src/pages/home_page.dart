import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloText = new TextStyle(fontSize:30);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de toques:', style: estiloText),
            Text('$conteo', style: estiloText)
        ],)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola gatito!');
          // conteo = conteo + 1;
        },
      

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    );
  }

}