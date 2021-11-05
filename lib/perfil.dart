import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Perfil"),
      ),
      body: Container(
      child: Center(child: Text("Perfil"),
      ),
      ),
    );
      
    
  }
}