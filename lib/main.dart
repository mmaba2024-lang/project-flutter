import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الصفحة الرئيسية')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'الحقل الأول',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'الحقل الثاني',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // طباعة النص من الحقل الأول في الحقل الثاني
                setState(() {
                  _controller2.text = _controller1.text;
                });
              },
              child: Text('طباعة النص في الحقل الثاني'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // الانتقال للصفحة الثانية مع تمرير نص الحقل الأول
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      passedText: _controller1.text,
                    ),
                  ),
                );
              },
              child: Text('الانتقال للصفحة الثانية'),
            ),
          ],
        ),
      ),
    );
  }
}

// الصفحة الثانية
class SecondPage extends StatelessWidget {
  final String passedText;

  SecondPage({required this.passedText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الصفحة الثانية')),
      body: Center(
        child: Text(
          'النص المرسل: $passedText',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
