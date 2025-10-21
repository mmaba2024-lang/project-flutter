import 'package:flutter/material.dart';

void main() {
  runApp(const MYApp());
}

class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مسبحة إلكترونية',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const TasPage(),
    );
  }
}

class TasPage extends StatefulWidget {
  const TasPage({super.key});

  @override
  State<TasPage> createState() => _TasPageState();
}

class _TasPageState extends State<TasPage> {
  int subhanAllah = 0;
  int alhamdulillah = 0;
  int allahuAkbar = 0;

  void resetAll() {
    setState(() {
      subhanAllah = 0;
      alhamdulillah = 0;
      allahuAkbar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مسبحة إلكترونية'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: resetAll,
            icon: const Icon(Icons.refresh),
            tooltip: 'إعادة التعيين الكلي',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildTasbeehItem(
              label: 'سبحان الله',
              count: subhanAllah,
              color: Colors.blue,
              onTap: () => setState(() => subhanAllah++),
            ),
            const SizedBox(height: 10), 
            buildTasbeehItem(
              label: 'الحمد لله',
              count: alhamdulillah,
              color: Colors.orange,
              onTap: () => setState(() => alhamdulillah++),
            ),
            const SizedBox(height: 10),
            buildTasbeehItem(
              label: 'الله أكبر',
              count: allahuAkbar,
              color: Colors.green,
              onTap: () => setState(() => allahuAkbar++),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTasbeehItem({
    required String label,
    required int count,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 3, offset: const Offset(0, 1))
        ],
      ),
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            '$count',
            style: const TextStyle(fontSize: 30, color: Colors.black87),
          ),
          const SizedBox(height: 6),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: onTap,
            child: const Text(
              'اضغط',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
