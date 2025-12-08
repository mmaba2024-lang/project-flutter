import 'package:flutter/material.dart';
import 'package:toku_app/screen/logn.dart';

class  phasespage extends StatelessWidget {
  const phasespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('setting'),
      ),
      body: ListView(
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
    );
  }
}