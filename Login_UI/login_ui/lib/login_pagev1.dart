import 'package:flutter/material.dart';
import 'login_page.dart';

class LoginPageV1 extends StatelessWidget {
  const LoginPageV1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header row: brand text and language switch placeholder
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Text('KFC'),
                    const SizedBox(width: 8),
                    const Text('JAGONYA AYAM'),
                    const Spacer(),
                    Row(
                      children: const [
                        Text('ID'),
                        SizedBox(width: 8),
                        Text('|'),
                        SizedBox(width: 8),
                        Text('EN'),
                      ],
                    ),
                  ],
                ),
              ),

              // Top hero section: logo circle placeholder, heading, subtext
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 24),
                    Text('UNLOCK MORE FINGER LICKIN’'),
                    Text('GOOD BENEFITS'),
                    SizedBox(height: 8),
                    Text('Dapatkan akses ke promo eksklusif dan hadiah, serta pesan ulang menu favorit Anda.'),
                    SizedBox(height: 24),
                  ],
                ),
              ),

              // Center image/logo placeholder
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 180,
                  child: Center(child: const Text('KFC Logo Placeholder')),
                ),
              ),

              const SizedBox(height: 16),

              // Form section container (no decoration)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('MASUKKAN NOMOR TELEPON ANDA'),
                    const SizedBox(height: 8),
                    const Text('Anda dapat masuk atau membuat akun baru di Aplikasi KFCku.'),
                    const SizedBox(height: 16),
                    const Text('Nomor Telepon'),
                    const SizedBox(height: 8),
                    const TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixText: '+62 ',
                        hintText: 'Masukkan nomor telepon',
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('Nomor telepon tidak boleh kosong'),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text('Lanjut'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Center(child: Text('Lanjut sebagai Tamu')),
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


