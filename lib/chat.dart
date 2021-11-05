import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetotcc/MenuPrincipal.dart';

class Chat extends StatelessWidget {
  const Chat ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPrincipal(),
      appBar: AppBar(title:Text("Chat"),
      ),
      body: Container(
      child: Center(child: Text("Chat"),
      ),
      ),
    );
      
    
  }
}