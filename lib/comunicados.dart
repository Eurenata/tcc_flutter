import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuPrincipal.dart';

class Comunicados extends StatelessWidget {
  const Comunicados ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPrincipal(),
      appBar: AppBar(title:Text("Comunicados"),
      ),
      body: Container(
      child: Center(child: Text("Comunicados"),
      ),
      ),
    );
      
    
  }
}