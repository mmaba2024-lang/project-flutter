import 'package:flutter/material.dart';
import 'package:toku_app/componets/item.dart';
import 'package:toku_app/models/number.dart';

class Famliy_Nambres extends StatelessWidget {
  const Famliy_Nambres({Key? key, this.color}) : super(key: key);
  final number one = const number(
    imge: 'assets/images/family_members/family_father.png',
    jpname: 'Chichioya',
    enname: 'father',
  );
  final number two = const number(
    imge: 'assets/images/family_members/family_daughter.png',
    jpname: 'Musume',
    enname: 'daughter',
  );
  final number three = const number(
    imge: 'assets/images/family_members/family_grandfather.png',
    jpname: 'Ojisan',
    enname: 'Grand father',
  );
  final number four = const number(
    imge: 'assets/images/family_members/family_mother.png',
    jpname: 'hahaoya',
    enname: 'mother',
  );
  final number five = const number(
    imge: 'assets/images/family_members/family_grandmother.png',
    jpname: 'sobo',
    enname: 'grandmother',
  );
  final number six = const number(
    imge: 'assets/images/family_members/family_older_brother.png',
    jpname: 'Nisan',
    enname: 'older_brother',
  );
  final number sevven = const number(
    imge: 'assets/images/family_members/family_older_sister.png',
    jpname: 'Ane',
    enname: 'older_sister',
  );
  final number eight = const number(
    imge: 'assets/images/family_members/family_son.png',
    jpname: 'Musuko',
    enname: 'So',
  );
  final number nine = const number(
    imge: 'assets/images/family_members/family_younger_brother.png',
    jpname: 'ichi',
    enname: 'younger_brothe',
  );
  final number ten = const number(
    imge: 'assets/images/family_members/family_younger_sister.png',
    jpname: 'ichi',
    enname: 'ten',
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
          Item(num: one, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: two, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: three, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: four, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: five, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: six, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: sevven, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: eight, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: nine, color:  Color.fromARGB(255, 84, 137, 76),),
          Item(num: ten, color:  Color.fromARGB(255, 84, 137, 76),),
        ],
      ),
    );
  }
}
