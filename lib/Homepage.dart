import 'package:flutter/material.dart';
import 'package:toku_app/componets/category.dart';
import 'package:toku_app/screen/2page.dart';
import 'package:toku_app/screen/3page.dart';
import 'package:toku_app/screen/4page.dart';
import 'package:toku_app/screen/logn.dart';
import 'package:toku_app/screen/numberspage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
       child:  ListView(
          children: [

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('setting'),
              subtitle: Text('this is setting page '),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('protiler'),
              subtitle: Text('this is protiler page '),

            ),
            ListTile(
              leading: Icon(Icons.surround_sound),
              title: Text('sound'),
              subtitle: Text(' sound setting  '),

            ),

            ListTile(
              leading: Icon(Icons.login),
              title: Text('تسجيل الخروج '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Lognpage(),));
              },

            ),
          ],
        ),
      ),
      appBar: AppBar(backgroundColor: Color(0xff46322B), title: Text('Toku')),
      body: Column(
        children: [
          category(
            text: 'Numbers',
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return nubpage();
                  },
                ),
              );
            },
          ),
          category(
            text: 'Famliy Nambres',
            color: Color.fromARGB(255, 84, 137, 76),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Famliy_Nambres();
                  },
                ),
              );
            },
          ),
          category(
            text: 'Colors',
            color: Color.fromARGB(255, 103, 72, 131),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Colorspage();
                  },
                ),
              );
            },
          ),


        ],
      ),

    );
  }
}
