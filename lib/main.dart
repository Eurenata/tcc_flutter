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
       
        primaryColor: Color(0xFF172236),

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
    actions: [
      CircleAvatar(
        backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FFicheiro%3ASuricato_perfil_Steam_2020.jpg&psig=AOvVaw13CJHHk6ayRyJwavw-ssUg&ust=1636823792545000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCIiXmICqk_QCFQAAAAAdAAAAABAD"),
      radius: 20,
      ),

    ],
    ),
    body:Center(
      child:Container(
      width: double.maxFinite,
      height: 300,
      child: Row(
      children: [
        Container(
        width: 150 
        ,)
      ],),
      ),
      ),
  );
  }
}