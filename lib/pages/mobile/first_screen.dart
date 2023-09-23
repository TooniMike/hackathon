import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/widgets.dart';

import '../../widgets/custom_font.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
          Positioned(
            top: -60,
            right: 0,
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
                  'assets/images/flare_len01.png',
                  height: 500,
                  width: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 0, right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Igniting a Revolution in HR Innovation',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text('getlinked Tech',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 30,
                            color: Colors.white), textAlign: TextAlign.center,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Hackathon ',
                        overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 36,
                                color: Colors.white)),
                        const Text('1.0',
                        overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 36,
                                color: Color(0xFFD434FE))),
                        Image.asset(
                          'assets/images/chain.png',
                          width: 40,
                          height: 40,
                        ),
                        Image.asset(
                          'assets/images/light.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                    Text(
                      'Participate in getlinked tech\nHackathon 2023 stand a\nchance to win a Big prize',
                      overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                      style: CustomFont.customFontWhite(14.0),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Button(text: 'Register'),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '00',
                          style: GoogleFonts.unicaOne(
                              color: Colors.white, fontSize: 60),
                        ),
                        Text('H', style: CustomFont.customFontWhite(10)),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '00',
                          style: GoogleFonts.unicaOne(
                              color: Colors.white, fontSize: 60),
                        ),
                        Text('M', style: CustomFont.customFontWhite(10)),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '00',
                          style: GoogleFonts.unicaOne(
                              color: Colors.white, fontSize: 60),
                        ),
                        Text('S', style: CustomFont.customFontWhite(10)),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/man.png',
                width: 350,
                height: 350,
                fit: BoxFit.fitWidth,
              )
            ],
          ),
          Positioned(
            top: 450,
            right: 30,
            child: Image.asset(
              'assets/images/network.png',
              width: 400,
              height: 400,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 50,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Image.asset(
                'assets/images/Vector 4.png',
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 130,
              top: 80,
            ),
            child: Image.asset(
              'assets/images/star.png',
              width: 20,
              height: 20,
            ),
          ),
          Positioned(
            top: 70,
            right: 60,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/images/star2.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
          Positioned(
            top: 90,
            right: 110,
            child: Image.asset(
              'assets/images/Bulb.png',
              width: 40,
              height: 40,
            ),
          ),
          
        ]),
      ],
    );
  }
}
