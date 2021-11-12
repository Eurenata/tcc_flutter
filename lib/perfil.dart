import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuPrincipal.dart';

class Perfil extends StatelessWidget {
  const Perfil ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPrincipal(),
      appBar: AppBar(title:Text("Perfil" ,style: TextStyle(fontSize: 25,)),
      ),
      body: Container(
      child: Center(child: Text("Perfil",style: TextStyle(fontSize: 25,color:(Colors.indigo)),),
      ),
      ),
    );
      
    
  }
}