import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuPrincipal.dart';

class Feed extends StatelessWidget {
  const Feed ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPrincipal(),
      appBar: AppBar(title:Text("Feed"),
      ),
      body: Container(
      child: Center(child: Text("Feed"),
      ),
      ),
    );
      
    
  }
}