import 'package:flutter/material.dart';
import 'package:projetotcc/MenuPrincipal.dart';

void main() {
  runApp(MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.indigo,
      ),
      home: MinhaPagina(),
    );
  }
}

class MinhaPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MinhaPaginaEstado();
  }
}

class _MinhaPaginaEstado extends State<MinhaPagina> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    drawer: MenuPrincipal(),
    appBar: AppBar(
    title:Text("CHATSchool"),
    ),
    body: Container(
      child: Center(child: Text("CHATSchool"),
      ),
      ),
  );
  }
}