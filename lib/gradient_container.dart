import 'package:flutter/material.dart';
import 'dice_rollers.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color1, this.color2,
                          {super.key});

  final Color color1, color2;
  
  

  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1,color2],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: Diceroller(),
          ),
    );
  }
}


// class GradientContainer extends StatelessWidget{
//   const GradientContainer(this.a1,this.r1,this.g1,this.b1,
//                           this.a2,this.r2,this.g2,this.b2,
//                           {super.key});

//   final int a1, r1, g1, b1;
//   final int a2, r2, g2, b2;

//   Widget build(context){
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors:  [
//               Color.fromARGB(a1, r1, g1, b1),
//               Color.fromARGB(a2, r2, g2, b2),
//               ],
//               begin: startAlignment,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Hello World'),
//           )
            
//     );
//   }
// }