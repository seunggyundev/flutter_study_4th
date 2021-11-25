import 'package:flutter/material.dart';

class StlessMethod extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(top: 33,),
            child: SizedBox(
              height: 200,
              width: 370,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(11.0),
                child: Image.asset(
                  'name',
                  width: 110.0,
                  height: 110.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          ListBody(children: <Widget> [
            const Text.rich(
              TextSpan(text: '🌀 text', style: TextStyle(/*color: Colors.white,*/ fontSize: 20,),
              ),
            ),
            const Text.rich(TextSpan(text: '🌀 text'
                'text'), style: TextStyle(/*color: Colors.white,*/ fontSize: 20),),
            const Text.rich(TextSpan(text: '🌀 text', style: TextStyle(color: Colors.yellow, fontSize: 20,),
                children: [TextSpan(text:'text', style: TextStyle(/*color: Colors.white,*/ fontSize: 20,)),]),
            ),
          ],),
        ],
      ),
    );
  }
}