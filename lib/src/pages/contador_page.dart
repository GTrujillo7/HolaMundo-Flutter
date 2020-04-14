import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget {

@override
 createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( "Numero De Clicks: ", style: _estiloTexto ),
            Text( "$_conteo" , style: _estiloTexto), 
          ],
          )
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add),
          onPressed: () { 

            _conteo++;

            // Esto se utiliza para que renderice cada que haya un cambio
            setState(() {
              
            });

          },
        ) ,
    );
  }
 }