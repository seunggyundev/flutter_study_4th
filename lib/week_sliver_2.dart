import 'package:flutter_styudy/main.dart';
import 'package:flutter/material.dart';


class week2 extends StatefulWidget {
  @override
  State<week2> createState() => _week2();
}

class _week2 extends State<week2> {
  final _items = <ListTile> [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(_items),),
          SliverAppBar(
            pinned: true, expandedHeight: 180.0, flexibleSpace: FlexibleSpaceBar(title: Text('2주차 목록'), background: Image.asset('asset/studyWeek2.jpg', fit: BoxFit.cover,),),
          ),
        ],
      ),
    );
  }
}