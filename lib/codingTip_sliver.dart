import 'package:flutter/material.dart';
import 'package:flutter_styudy/main.dart';

class codingTip extends StatelessWidget {
  final _items = <ListTile> []; //listTile을 담는 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(_items),),
          SliverAppBar(
            pinned: true, expandedHeight: 180.0, flexibleSpace: FlexibleSpaceBar(title: Text('sliverlist'), background: Image.asset('asset/coding_tip.jpg', fit: BoxFit.cover,),),
          ),
        ],
      ),
    );
  }

}