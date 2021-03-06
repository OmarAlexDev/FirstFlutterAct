import 'package:flutter/material.dart';
import 'dart:math';

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
   return _HelloState();
  }
}

class _HelloState extends State<HelloStateful>{
  int variable_estado = -1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Hope Starwars Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado: ",
              style: TextStyle(fontSize: 28,color: Colors.deepPurpleAccent),),
            Text("$variable_estado",
              style: TextStyle(fontSize: 40,color: Colors.deepOrange),)
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }
  Widget _crea_botones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(width: 50,),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_zero),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_plus),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_minus),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_random),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_reset)
        //botón para incrementar de 1 en 1
        //botón para decrementar de 1 en 1
        //botón para incremento aleatorio
        //botón para regresar a -1 
      ],
    );
  }
  void funcion_zero(){
    setState(() {
      variable_estado=0;
    });
  }
  void funcion_plus(){
    setState(() {
      variable_estado=variable_estado+1;
    });
  }
  void funcion_minus(){
    setState(() {
      variable_estado=variable_estado-1;
    });
  }
  void funcion_reset(){
    setState(() {
      variable_estado=-1;
    });
  }
  void funcion_random(){
    Random random = new Random();
    int randomNumber = random.nextInt(10);
    setState(() {
      variable_estado=variable_estado+randomNumber;
    });
  }
}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext){
    return Center(
      child: Container(
        color:Colors.amber,
        height: 400,
        width:300,
        child: Center(
          child: Text(
            "Flutter Rules!",
                style:TextStyle(fontSize: 55.0,color: Colors.black, fontFamily: "Arial"),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: "Hope: starwars app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HelloStateful(),
      ),
    )
  );
}



