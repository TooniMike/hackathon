import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        right: 1,
        top: 50,
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
              'assets/images/Straight-Lens.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Positioned(
        right: 1,
        bottom: 0,
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
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 60),
        child: Column(
          children: [
            Image.asset(
              'assets/images/woman.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Rules and',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 26,
                        color: Colors.white)),
                const Text('Guidelines',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 20,
                        color: Color(0xFFD434FE))),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Our tech hackathon is a melting pot of\nvisionaries, and its purpose is as clear as day:\nto shape the future. Whether you\'re a coding\ngenius, a design maverick, or a concept\nwizard, you\'ll have the chance to transform\nyour ideas into reality. Solving real-world\nproblems, pushing the boundaries of\ntechnology, and creating solutions that can\nchange the world, that\'s what we\'re all about!',
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Padding(
                  padding: const EdgeInsets.only(left: 0, top: 20),
                  child: Image.asset('assets/images/star.png', width: 20, height: 20,),
                )
          ],
        ),
      ),
      Positioned(
        top: 140,
        left: 80,
        child: Image.asset(
          'assets/images/star.png',
          width: 20,
          height: 20,
        ),
      ),
      Positioned(
        top: 400,
        right: 70,
        child: Image.asset(
          'assets/images/star2.png',
          width: 20,
          height: 20,
        ),
      ),
    ]);
  
  }
}
