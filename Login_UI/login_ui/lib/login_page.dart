import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_pagev1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    // Fixed paddings as requested, still responsive for size-driven elements
    const double horizontalPadding = 24;
    const double topSectionVerticalPadding = 28;
    const Color kfcRed = Color(0xFFE4002B);
    const Color secondaryGrey = Color(0xFF6B7280);

    return Scaffold(
      // No AppBar per requirement
      backgroundColor: kfcRed,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top-most header row: brand and language pill
              Padding(
                padding: const EdgeInsets.only(
                  left: horizontalPadding,
                  right: horizontalPadding,
                  top: 12,
                ),
                child: Row(
                  children: [
                    const Text(
                      'KFC',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'JAGONYA AYAM',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.85),
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        letterSpacing: 0.4,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.95),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'ID',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('|', style: TextStyle(color: Colors.black54)),
                          ),
                          Text(
                            'EN',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Top section (logo placeholder + headings)
              Padding(
                padding: const EdgeInsets.fromLTRB(horizontalPadding, topSectionVerticalPadding, horizontalPadding, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo placeholder
                    const SizedBox(height: 24),
                    // Main heading (uppercase, centered, white) split across lines similar to screenshot
                    const Text(
                      'UNLOCK MORE FINGER LICKIN’\nGOOD BENEFITS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.6,
                        height: 1.25,
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Subtext (small)
                    Text(
                      'Dapatkan akses ke promo eksklusif dan hadiah, serta pesan ulang menu favorit Anda.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.95),
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),
                    // Center KFC SVG logo with white rounded backing so transparent areas look identical
                    const SizedBox(height: 24),
                    Center(
                      child: Container(
                        width: screenSize.width * 0.52,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: AspectRatio(
                              aspectRatio: 1.02,
                              child: FittedBox(
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/images/KFC_logo-image.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // White container with rounded top for the form
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    horizontalPadding,
                    28,
                    horizontalPadding,
                    28,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      const Text(
                        'MASUKKAN NOMOR TELEPON ANDA',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Subtitle
                      Text(
                        'Anda dapat masuk atau membuat akun baru di Aplikasi KFCku.',
                        style: TextStyle(
                          color: secondaryGrey,
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Field label
                      Text(
                        'Nomor Telepon',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Phone number TextField with +62 prefix
                      TextField(
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        decoration: const InputDecoration(
                          prefixText: '+62 ',
                          prefixStyle: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Colors.black),
                          hintText: 'Masukkan nomor telepon',
                          hintStyle: TextStyle(fontFamily: 'Poppins', color: Color(0xFF9CA3AF)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDFDFDF), width: 2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kfcRed, width: 2),
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),
                      // Error placeholder
                      const Text(
                        'Nomor telepon tidak boleh kosong',
                        style: TextStyle(
                          color: kfcRed,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Primary button (red)
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kfcRed,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Lanjut',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Continue as guest (centered, red text)
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPageV1()),
                            );
                          },
                          child: const Text(
                            'Lanjut sebagai Tamu',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kfcRed,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


