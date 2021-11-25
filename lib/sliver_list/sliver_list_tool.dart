import 'package:flutter/material.dart';


class SliverPage extends StatelessWidget {
  final _items = <ListTile> []; //listTile을 담는 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(_items),),
          SliverAppBar(
            pinned: true, expandedHeight: 180.0, flexibleSpace: FlexibleSpaceBar(title: Text('sliverlist'), background: Image.asset('name', fit: BoxFit.cover,),),
          ),
        ],
      ),
    );
  }

}