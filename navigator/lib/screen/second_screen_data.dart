import 'package:flutter/material.dart';

class SecondScreenData extends StatelessWidget {
  final String nama;
  final String email;
  final String nim;

  const SecondScreenData({
    super.key,
    required this.nama,
    required this.email,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama: $nama',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Email: $email',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'NIM: $nim',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to First Screen',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}