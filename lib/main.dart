import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child:
          Text('Dicee',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),

    )

  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void changebothdiceface(){
    leftdicenumber=Random().nextInt(6) + 1;
    rightdicenumber=Random().nextInt(6)+1;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 1,
            child: TextButton(
                onPressed: (){
                  setState(() {
                   changebothdiceface();
                    print('leftdicenumber = $leftdicenumber');
                  });


                },

                child: Image.asset('images/dice$leftdicenumber.png')),
          ),

          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: (){
                setState(() {
                  changebothdiceface();
                  print('rightdicenumber = $rightdicenumber');
                });


              },
              child: Image(
                image: AssetImage('images/dice$rightdicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


