import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuPrincipal.dart';

class Configuracao extends StatelessWidget {
  const Configuracao ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPrincipal(),
      appBar: AppBar(title:Text("Configuração"),
      ),
      body: Container(
      child: Center(child: Text("Configuração"),
      ),
      ),
    );
      
    
  }
}