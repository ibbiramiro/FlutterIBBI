import 'package:flutter/material.dart';
import 'second_screen_data.dart';

class FirstScreenData extends StatelessWidget {
  const FirstScreenData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen Data'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreenData(
                  nama: 'Ramiro',
                  email: 'ibbiramiro@gmail.com',
                  nim: '112',
                ),
              ),
            );
          },
          child: const Text(
            'Send Data to Second Screen',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}