import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Feed"),
      ),
      body: Container(
      child: Center(child: Text("Feed"),
      ),
      ),
    );
      
    
  }
}