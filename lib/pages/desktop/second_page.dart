import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, right: 80, left: 90),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/the big idea 1.png',
                width: 400,
                height: 400,
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Introduction to getlinked',
                      style: TextStyle(
                          fontFamily: 'ClashDisplay',
                          fontSize: 32,
                          color: Colors.white)),
                  const Text('tech Hackathon 1.0',
                      style: TextStyle(
                          fontFamily: 'ClashDisplay',
                          fontSize: 32,
                          color: Color(0xFFD434FE))),
                  Text(
                      'Our tech hackathon is a melting pot of visionaries, and its purpose is as\nclear as day: to shape the future. Whether you\'re a coding genius, a\ndesign maverick, or a concept wizard, you\'ll have the chance to transform\nyour ideas into reality. Solving real-world problems, pushing the boundaries\nof technology, and creating solutions that can change the world,\nthat\'s what we\'re all about!',
                      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14)),
                ],
              ),
            ],
          )
        ]),
        Positioned(
          top: 195,
          left: 200,
          child: Text(
            'The Big\nIdea!',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Positioned(
          top: 140,
          left: 0,
          child: Image.asset('assets/images/sata gra.png'),
        ),
        Positioned(
          top: 120,
          right: 20,
          child: Image.asset('assets/images/star pu.png'),
        ),
        Positioned(
          top: 345,
          left: 430,
          child: Image.asset('assets/images/arrow.png'),
        ),
        Positioned(
                  top: 350,
                  left:0,
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
                        'assets/images/Purple-Lens.png',
                        height: 500,
                        width: 500,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
      ]),
    );
  
  }
}
