import 'package:flutter/material.dart';
import 'styledtext.dart';
import 'dart:math';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState(){
      return _DicerollerState();
   }
}

class _DicerollerState extends State<Diceroller> {
  
  var facedice = 'assets/images/dice-2.png';
  final randommizer = Random();
  var numberr = 1;
  
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [Image.asset( 'assets/images/dice-$numberr.png',width: 200,),
                    const SizedBox(height: 20,),//เพิ่มระยะห่างแนวตั้งระหว่าง Image widget และ TextButton Widget
                    TextButton(//ปุ่มที่เป็นรูปแบบข้อความ
                      onPressed: () {
                      // Padding: const EdgeInsets.only(เพิ่มระยะห่างของ textButton จากด้านบน
                      //   top: 20
                      // );

                        setState(() {
                        numberr = randommizer.nextInt(6) + 1;
                        //facedice = 'assets/images/dice-$numberr.png';
                        });
                      },
                      child: const StyledText('Roll Dice'),
                    )
                  ],
            );
  }
  
}