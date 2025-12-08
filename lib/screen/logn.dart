
import 'package:flutter/material.dart';
import 'package:toku_app/Homepage.dart';


class Lognpage extends StatefulWidget {
  const Lognpage({super.key});

  @override
  State<Lognpage> createState() => _LognpageState();
}

class _LognpageState extends State<Lognpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color.fromARGB(246, 49, 28, 55),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(246, 36, 19, 36),
        title: Center(
          child: Text(
            'تسجيل الدخول',
            style: TextStyle(
              color: const Color.fromARGB(179, 118, 89, 89),
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 90),

        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          decoration: BoxDecoration(
            color: Color.fromARGB(246, 74, 40, 83), // لون شبه شفاف لطيف
            borderRadius: BorderRadius.circular(20), // زوايا ناعمة
            border: Border.all(
              color: Colors.white.withOpacity(0.50), // الحد الخارجي الشفاف
              width: 3,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // ظل خفيف وأنيق
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffix: Icon(Icons.email),
                  labelText: 'البريد الاكتروني',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffix: Icon(Icons.password),
                  labelText: 'كلمة المرور',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: 150,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  Homepage()),
                    );
                  },
                  textColor: Colors.purple,
                  child: Text('تسجيل', style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
