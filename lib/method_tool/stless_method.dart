import 'package:flutter/material.dart';

class StlessMethod extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(pinned: false, expandedHeight: 180.0, flexibleSpace: FlexibleSpaceBar(background: Image.asset('asset/stless_method.jpg', fit: BoxFit.cover,),),),
        SliverFillRemaining(child: Align(alignment: Alignment.topLeft, child: Column(children: [
          const Text.rich(
          TextSpan(text: '🌀 text', style: TextStyle(/*color: Colors.white,*/ fontSize: 20,),
          ),
        ),
          const Text.rich(TextSpan(text: '🌀 text'
              'text'), style: TextStyle(/*color: Colors.white,*/ fontSize: 20),),
          const Text.rich(TextSpan(text: '🌀 text', style: TextStyle(color: Colors.yellow, fontSize: 20,),
              children: [TextSpan(text:'text', style: TextStyle(/*color: Colors.white,*/ fontSize: 20,)),]),
          ),],),),),
        ]
      ),
    );
  }
}