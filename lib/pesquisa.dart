import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pesquisa extends StatelessWidget {
  const Pesquisa ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Pesquisar"),
      ),
      body: Container(
      child: Center(child: Text("Pesquisar"),
      ),
      ),
    );
      
    
  }
}