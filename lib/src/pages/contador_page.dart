import 'package:flutter/material.dart';

class ContaPage extends StatefulWidget{
  
  @override
  createState() => _ContaPageState();

}

class _ContaPageState extends State<ContaPage>{
    
 final _estiloText = new TextStyle(fontSize:30);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Love'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de taps:', style: _estiloText),
            Text('$_conteo', style: _estiloText)
        ],)
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:5.0),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox(width:5.0)),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
        SizedBox(width:5.0),
        FloatingActionButton(onPressed: _agregator, child: Icon(Icons.add)),
        SizedBox(width:5.0),      
      ],
    );
  }

  void _agregator(){
    setState(() => _conteo++);
  }

  void _sustraer(){
    setState(() => _conteo--);

  }

  void _reset(){
    setState(() => _conteo = 0);
  }

}
/*FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
         // print('Hola gatito!');
          


          setState(() {
            _conteo++;
          });
        },
      ), */