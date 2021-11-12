import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetotcc/chat.dart';
import 'package:projetotcc/comunicados.dart';
import 'package:projetotcc/configuracao.dart';
import 'package:projetotcc/feed.dart';
import 'package:projetotcc/main.dart';
import 'package:projetotcc/perfil.dart';
import 'package:projetotcc/pesquisa.dart';

class MenuPrincipal extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.indigo.shade900,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15 ),
          children: [
             const SizedBox(height: 25,),
          cabecalho(
            nome: "Renata Rodrigues Botelho",
            email:"renata.botelho@gmail.com",
            imagem: "../imagem/images.jpg"
            //imagem:"https://scontent.fcgh52-1.fna.fbcdn.net/v/t1.6435-9/191924642_884814515402236_429252686203897721_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeG26ojVJTNZB7IG2cx8xMBBFR8Ycyu73q8VHxhzK7ver0U47i7ubBqXCf1FP168TDzcxfxJwewVQ__a81U10z5n&_nc_ohc=UzjZDxBqi7IAX8wEh9G&_nc_ht=scontent.fcgh52-1.fna&oh=9f43e8ecb1b68f99100e3316fc233c3c&oe=61742E78"
          ),
          const SizedBox(height: 25,),
          Divider(color: Colors.white,),
          const SizedBox(height: 25,),
          menuitem(
            texto: "FEED",
            icone: Icons.home,
             clique: () => itemmenu (context, 1)
          ),
          const SizedBox(height: 5,),
           menuitem(
            texto: "COMUNICADOS",
            icone: Icons.text_fields_outlined,
             clique: () => itemmenu (context, 2)
          ),
           const SizedBox(height: 5,),
           menuitem(
            texto: "PERFIL",
            icone: Icons.people_alt,
             clique: () => itemmenu (context, 3)
          ),
           const SizedBox(height: 5,),
           menuitem(
            texto: "PESQUISAR",
            icone: Icons.search,
             clique: () => itemmenu (context, 4)
          ),
           const SizedBox(height: 5,),
           menuitem(
            texto: "CHAT",
            icone: Icons.chat,
             clique: () => itemmenu (context, 5)
          ),
           const SizedBox(height: 25),

           Divider(color: Colors.white,),

           const SizedBox(height: 25,),

           menuitem(
            texto: "CONFIGURAÇÃO",
            icone: Icons.phonelink_setup,
            clique: () => itemmenu (context, 6)
          ),
          ],
        ),
      ),
    );
  }

  menuitem(
    {required String texto, required IconData icone, VoidCallback? clique}
    ) {
      return ListTile(
        leading: Icon(icone, color: Colors.white),
        title: Text(texto, style: TextStyle(color: Colors.white)),
        hoverColor: Colors.white12,
        onTap: clique,
      );
    }

  cabecalho( {required String nome, required String email,required String imagem}
    )
  =>
  InkWell(
    child: Row(
      children: [
        const SizedBox(height: 25),
        CircleAvatar(
          radius: 30,
            backgroundImage: NetworkImage(imagem),
            ),

    SizedBox(width: 25,),
   Column(
    children: [
      const SizedBox(height: 10),
    Text(nome,style: TextStyle(fontSize: 15, color: Colors.white),
    ),
    const SizedBox(height: 10),
    Text(email,style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );

  itemmenu(BuildContext context, int i) {
    Navigator.of(context).pop();
    if(i==0){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> MeuAplicativo()));
    } else if(i==1){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Feed()));
  } else if(i==2){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Comunicados()));
} else if(i==3){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Perfil()));
} else if(i==4){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Pesquisa()));
} else if(i==5){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Chat()));
}else if(i==6){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> Configuracao()));
}
  }
}