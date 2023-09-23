import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/button.dart';
import 'package:hackathon/widgets/custom_font.dart';

class NinthPage extends StatelessWidget {
  const NinthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF150E28).withOpacity(0.2),
                offset: const Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/Lens-left.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 90, bottom: 100),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Privacy Policy and',
                              style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 32,
                                  color: Colors.white)),
                          const Text('Terms',
                              style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 32,
                                  color: Color(0xFFD434FE))),
                          Text('Last updated on September 12, 2023.',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              'Below are our privacy & policy, which outline a lot of goodies.\nit’s our aim to always take of our participant',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: 600,
                            decoration: BoxDecoration(
                                color:
                                    const Color(0xFFD9D9D9).withOpacity(0.05),
                                border:
                                    Border.all(color: const Color(0xFFD434FE)),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(60.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'At getlinked tech Hackathon 1.0, we value your privacy\nand are committed to protecting your personal information.\nThis Privacy Policy outlines how we collect, use, disclose,\nand safeguard your data when you participate in our tech\nhackathon event. By participating in our event, you consent\nto the practices described in this policy.',
                                    style: CustomFont.customFontWhite(16.0),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Licensing Policy',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFFD434FE),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                      'Here are terms of our Standard License:',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.start),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/mark.png'),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                          'The Standard License grants you a non-exclusive right to\nnavigate and register for our event',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 14)),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/mark.png'),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                          'You are licensed to use the item available at any free source\nsites, for your project developement',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 14))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Button(text: 'Register'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset('assets/images/manLock.png', width: 500, height: 500)
        ],
      ),
      Positioned(
          top: 60,
          right: 20,
          child: Image.asset(
            'assets/images/Vector.png',
            width: 600,
            height: 600,
          )),
      Positioned(
          top: 180, left: 400, child: Image.asset('assets/images/star pu.png')),
      Positioned(
          top: 220,
          left: 700,
          child: Image.asset('assets/images/sata gra.png')),
      Positioned(
          top: 220, right: 150, child: Image.asset('assets/images/star.png')),
      Positioned(
          top: 800, left: 14, child: Image.asset('assets/images/star pu.png')),
      Positioned(
          top: 800, right: 14, child: Image.asset('assets/images/star2.png')),
    ]);
  }
}
