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
        title: Text("ChatSchool"),
        actions: [
          CircleAvatar(
            child: Image.asset('assets/imagem/logo2.png'),
            radius: 25,
          ),
        ],
      ),
      body: Container(
        color: Colors.lightBlue.shade100,
        width: double.maxFinite,
        height: 900,
        child: Column(
          children: [
            Container(
              child: Center(
                child: Text("Bem vindos ao ChatSchool!",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 45)),
              ),
              width: 700,
              height: 200,
              color: Colors.transparent,
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
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                        )),
                    width: 200,
                    height: 50,
                    color: Colors.white70,
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
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                        )),
                    width: 200,
                    height: 50,
                    color: Colors.white70,
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
