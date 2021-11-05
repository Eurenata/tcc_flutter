import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Configuracao extends StatelessWidget {
  const Configuracao ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Configuração"),
      ),
      body: Container(
      child: Center(child: Text("Configuração"),
      ),
      ),
    );
      
    
  }
}