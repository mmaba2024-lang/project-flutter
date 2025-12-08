import 'package:flutter/material.dart';
import 'package:toku_app/componets/item.dart';
import 'package:toku_app/models/number.dart';

class nubpage extends StatelessWidget {
  const nubpage({Key? key, this.color}) : super(key: key);
  final number one = const number(
    imge: 'assets/images/numbers/number_one.png',
    jpname: 'ichi',
    enname: 'one',
  );
  final number two = const number(
    imge: 'assets/images/numbers/number_two.png',
    jpname: 'ichi',
    enname: 'tow',
  );
  final number three = const number(
    imge: 'assets/images/numbers/number_three.png',
    jpname: 'ichi',
    enname: 'three',
  );
  final number four = const number(
    imge: 'assets/images/numbers/number_four.png',
    jpname: 'ichi',
    enname: 'four',
  );
  final number five = const number(
    imge: 'assets/images/numbers/number_five.png',
    jpname: 'ichi',
    enname: 'five',
  );
  final number six = const number(
    imge: 'assets/images/numbers/number_six.png',
    jpname: 'ichi',
    enname: 'six',
  );
  final number sevven = const number(
    imge: 'assets/images/numbers/number_seven.png',
    jpname: 'ichi',
    enname: 'sevven',
  );
  final number eight = const number(
    imge: 'assets/images/numbers/number_eight.png',
    jpname: 'ichi',
    enname: 'eight',
  );
  final number nine = const number(
    imge: 'assets/images/numbers/number_nine.png',
    jpname: 'ichi',
    enname: 'nine',
  );
  final number ten = const number(
    imge: 'assets/images/numbers/number_ten.png',
    jpname: 'ichi',
    enname: 'ten',
  );
  final color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff46322B), title: Text('Numbers')),
      body: ListView(
        children: [
          Item(num: one, color:  Color(0xffEF9235),),
          Item(num: two,color:  Color(0xffEF9235),),
          Item(num: three, color:  Color(0xffEF9235),),
          Item(num: four, color:  Color(0xffEF9235),),
          Item(num: six, color:  Color(0xffEF9235),),
          Item(num: sevven, color:  Color(0xffEF9235),),
          Item(num: eight, color:  Color(0xffEF9235),),
          Item(num: nine, color:  Color(0xffEF9235),),
          Item(num: ten, color:  Color(0xffEF9235),),
        ],
      ),
    );
  }
}
