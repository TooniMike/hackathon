import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 80, right: 80, bottom: 60),
      child: Stack(children: [
        Column(
          children: [
            Image.asset(
              'assets/images/the big idea 1.png',
            ),
            Image.asset(
              'assets/images/arrow.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Introduction to getlinked',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 26,
                        color: Colors.white)),
                const Text('tech Hackathon 1.0',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 20,
                        color: Color(0xFFD434FE))),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Our tech hackathon is a melting pot of visionaries, and its purpose is as clear as\nday: to shape the future. Whether you\'re\na coding genius, a design maverick, or a\nconcept wizard, you\'ll have the chance to transform your ideas into reality. Solving\nreal-world problems, pushing the boundaries\nof technology, and creating solutions that can change the world, that\'s what we\'re all about!',
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 140,
          left: 0,
          child: Image.asset(
            'assets/images/sata gra.png',
            width: 20,
            height: 20,
          ),
        ),
        Positioned(
          top: 470,
          right: 20,
          child: Image.asset(
            'assets/images/star pu.png',
            width: 20,
            height: 20,
          ),
        ),
      ]),
    );
  }
}
