import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3F4F6),
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: const Color(0xFF1E3A8A), // نص داكن أزرق
          displayColor: const Color(0xFF1E3A8A),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2563EB), // أزرق احترافي
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('CV')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xFF2563EB), // أزرق جذاب
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('images/me.png'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'مبارك بامنقاء',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Programmer',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                color: const Color(0xFFE0E7FF), // أزرق فاتح لطيف
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Email: m.m.a.ba2024@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E3A8A),
                          ),
                        ),
                        Text(
                          'Name: Mobark',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E3A8A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Phone: 717710504',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E3A8A),
                          ),
                        ),
                        Text(
                          'Gender: Male',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E3A8A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: const Color(0xFFF0F4FF), // خلفية ناعمة للفقرات
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Skills',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2563EB), // تمييز أزرق
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('1- Work under pressure'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('2- Accuracy and attention'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('3- Problem solving'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: const Color(0xFFF0F4FF), // نفس اللون للفقرات
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Academic Qualifications',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2563EB), // تمييز أزرق
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('1- Flutter Mobile Development Certificate – Udemy'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('2- Diploma in Programming & App Development'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('3- Web Development & Design courses – HTML, CSS, JavaScript'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
