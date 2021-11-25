import 'package:flutter/material.dart';


class SliverPage extends StatefulWidget {
  @override
  State<SliverPage> createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget> [
          SliverAppBar(pinned: true, expandedHeight: 180.0, flexibleSpace: FlexibleSpaceBar(title: Text(''), background: Image.asset('name', fit: BoxFit.cover,),),),
          SliverFillRemaining(child: Text(''),), //내용영역
        ],
      ),
    );
  }
}