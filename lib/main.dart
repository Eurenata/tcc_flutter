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
  get child => null;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    drawer: MenuPrincipal(),
    appBar: AppBar(
    title:Text("ChatSchool"),
    actions: [
      CircleAvatar(
        backgroundImage: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.wikipedia.org%2Fwiki%2FFicheiro%3ASuricato_perfil_Steam_2020.jpg&psig=AOvVaw13CJHHk6ayRyJwavw-ssUg&ust=1636823792545000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCIiXmICqk_QCFQAAAAAdAAAAABAD"),
      radius: 20,
      ),

    ],
    ),

    body:
      Container(
        color: Colors.lightBlue.shade100,
      width: double.maxFinite,
      height: 900,
      child:Column(
      children: [
        Container( 
        child: Center(
          child: Text("Bem vindos ao ChatSchool!", 
          style: TextStyle(color:  Colors.lightBlue, fontSize:45)),
        ),
        width: 700,
        height: 200,
        color:  Colors.transparent,
      
         ),

         Container(           
         width: double.maxFinite,
         height: 150,
         ),


      Container(
      width: double.infinity,
      height: 50,
      child: Column(
      children: [
        Container( 
        child: Text("Email", 
        style: TextStyle(color:Colors.lightBlue, fontSize:25,)),
        width: 200,
        height: 50,
        color:  Colors.white70,
        ), 
      ],
      ),
      ),
      Container(           
         width: double.maxFinite,
         height: 45,
         ),

           Container(
      width: double.infinity,
      height: 50,
      child: Column(
      children: [
        Container( 
        child: Text("Senha", 
        style: TextStyle(color:Colors.lightBlue, fontSize:25,)),
        width: 200,
        height: 50,
        color:  Colors.white70,
        ), 
      ],
      ),
      ),
      ],
       
      ),
      
      ),
     
      
  );

  
  }
}
 /* children: [
       width: 500,
        height: 50,
        color:  Color(0xFF172236),*/

