import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90),
      child: Stack(
        children: [
          Positioned(
          top: 80,
          right: 100,
          child: Image.asset('assets/images/Ellipse 1.png', height: 100, width: 100,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
          const SizedBox(
            width: 40,
          ),
          Container(
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
              ),
            ),
          ),
                Image.asset('assets/images/woman.png', width: 500, height: 500,)
          
        ]),
        Positioned(
          top: 105,
          left: 1,
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Rules and',
                      style: TextStyle(
                          fontFamily: 'ClashDisplay',
                          fontSize: 32,
                          color: Colors.white)),
                  const Text('Guidelines',
                      style: TextStyle(
                          fontFamily: 'ClashDisplay',
                          fontSize: 32,
                          color: Color(0xFFD434FE))),
                  Text(
                      'Our tech hackathon is a melting pot of visionaries, and its purpose is as\nclear as day: to shape the future. Whether you\'re a coding genius, a\ndesign maverick, or a concept wizard, you\'ll have the chance to transform\nyour ideas into reality. Solving real-world problems, pushing the boundaries\nof technology, and creating solutions that can change the world,\nthat\'s what we\'re all about!',
                      style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14)),
                ],
              ),
        ),
        Positioned(
          top: 100,
          left: 300,
          child: Image.asset('assets/images/star2.png'),
        ),
        Positioned(
          top: 300,
          left: 600,
          child: Image.asset('assets/images/star.png'),
        ),
        Positioned(
          right: 1,
          top: 1,
          child: Image.asset('assets/images/Straight-Lens.png'),
        ),
      ]),
    );
  
  }
}