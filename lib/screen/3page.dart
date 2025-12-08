import 'package:flutter/material.dart';
import 'package:toku_app/componets/item.dart';
import 'package:toku_app/models/number.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({Key? key, this.color}) : super(key: key);
  final number one = const number(
    imge:
        'assets/images/colors/color_red.png', //assets/images/colors/color_red.png
    jpname: 'Chichioya',
    enname: 'red',
  );
  final number two = const number(
    imge:
        'assets/images/colors/color_white.png', //assets/images/colors/color_white.png
    jpname: 'Musume',
    enname: 'whit',
  );
  final number three = const number(
    imge: 'assets/images/colors/color_black.png',
    jpname: 'Ojisan',
    enname: 'black',
  );
  final number four = const number(
    imge: 'assets/images/colors/yellow.png',
    jpname: 'hahaoya',
    enname: 'yellow',
  );
  final number five = const number(
    imge: 'assets/images/colors/color_gray.png',
    jpname: 'sobo',
    enname: 'gray',
  );
  final number six = const number(
    imge: 'assets/images/colors/color_green.png',
    jpname: 'Nisan',
    enname: 'green',
  );
  final number sevven = const number(
    imge: 'assets/images/colors/color_brown.png',
    jpname: 'Ane',
    enname: 'browen',
  );
  final number eight = const number(
    imge: 'assets/images/colors/color_dusty_yellow.png',
    jpname: 'Musuko',
    enname: 'dusty_yellow',
  );
  
 

  final color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Famliy_Nambres'),
      ),
      body: ListView(
        children: [
          Item(num: one, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: two, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: three, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: four, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: five, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: six, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: sevven, color: Color.fromARGB(255, 103, 72, 131)),
          Item(num: eight, color: Color.fromARGB(255, 103, 72, 131)),
          
        ],
      ),
    );
  }
}
