import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:flutter_styudy/codingTip_sliver.dart';
import 'package:flutter_styudy/week_sliver_2.dart';
import 'package:flutter_styudy/week_sliver_3.dart';
import 'package:flutter_styudy/week_sliver_4.dart';

import 'package:flutter_styudy/method_tool/stless_method.dart';




final dummyItems = [
  'asset/week1.colrow.jpg',
  'asset/week1.container.jpg',
  'asset/week1.material.jpg',
  'asset/week1.stf.jpg',
  'asset/week1.stlee.jpg',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'GDSC Flutter Archive',
          style: TextStyle(color: Colors.black, fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0), //상단 앱바로부터의 거리 설정
              //padding: const EdgeInsets.all(0.0),
              width: 350,
              height: 250,
              child: Swiper(
                onTap: (index) {
                  if (index == 0){
                    return Navigator.push(context, MaterialPageRoute(builder: (context) => week2()),);
                  }
                  if (index == 4) {
                    return Navigator.push(context, MaterialPageRoute(builder: (context) => StlessMethod()),);
                  } //Stless_method
                },
                viewportFraction: 0.7, //사진크기 설정
                scale: 0.75, //양 옆 사진 사이즈 조절
                autoplay: true,
                itemCount: dummyItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 0.5), //카드 사이의 공간 설정
                    child: ClipRRect(borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(dummyItems[index], fit: BoxFit.cover,),),
                  );
                },
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => week2()),);
            },
            leading: Icon(Icons.account_balance_outlined, color: Colors.black54, size: 25,),
            title: Text('Week 2 arrange',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,),
          ),
          ListTile(
            onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => week3()),);
    },
            leading: Icon(Icons.account_balance_outlined, color: Colors.black54, size: 25,),
            title: Text('Week 3 arrange',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => week4()),);
            },
            leading: Icon(Icons.account_balance_outlined, color: Colors.black54, size: 25,),
            title: Text('Week 4 arrange',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => codingTip()),);
            },
            leading: Icon(Icons.account_balance_outlined, color: Colors.black54, size: 25,),
            title: Text('Coding Tip',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined, size: 22,),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

/*class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0, autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true,),
      items: dummyItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                child: Image.asset(i, fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(8.0),
              ),
            );
          },
        );
      }).toList(),
    );

  }

  Widget _buildBottom() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이밴트] 이것은 공지사항입니다'),
      );
    },);

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
*/



