import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comunicados extends StatelessWidget {
  const Comunicados ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Comunicados"),
      ),
      body: Container(
      child: Center(child: Text("Comunicados"),
      ),
      ),
    );
      
    
  }
}