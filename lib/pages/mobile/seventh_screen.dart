import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeventhScreen extends StatelessWidget {
  const SeventhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
          Positioned(
            right: 0,
            top: 0,
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
            right: 0,
            top: 0,
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
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 480, top: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/star pu.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Prizes and',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 32,
                            color: Colors.white)),
                    const Text('Rewards',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 32,
                            color: Color(0xFFD434FE))),
                            Text(
                                  'Highlight of the prizes or rewards for winners\nand for participants.',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white, fontSize: 14), textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                          maxLines: 3,),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/cup.png', width: 320, height: 320,),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 1150,
            right: 50,
            child: Image.asset(
              'assets/images/star.png',
              width: 20,
              height: 20,
            ),
          ),
          Positioned(
            top: 250,
            right: 250,
            child: Image.asset(
              'assets/images/star2.png',
              width: 20,
              height: 20,
            ),
          ),

          // second position
          Positioned(
                  top: 780, 
                  left: 20,
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFD434FE)
                      ),
                      color: const Color(0xFFD434FE).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('2nd', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        Text('Runner', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14,)),
                        Text('N300,000', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontSize: 14, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 30,)
                      ],
                    ),
                  )),
                   Positioned(
                  top: 720,
                  left: 19,
                  child: Image.asset('assets/images/silver_medal 1.png', width: 100, height: 100,)),

                  //first Position
                  Positioned(
                  top: 780, 
                  left: 150,
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF903AFF)
                      ),
                      color: const Color(0xFF903AFF).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('1st', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        Text('Runner', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14,)),
                        Text('N400,000', style: GoogleFonts.montserrat(color: const Color(0xFF903AFF), fontSize: 14, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 30,)
                      ],
                    ),
                  )),
                   Positioned(
                  top: 680,
                  left: 124,
                  child: Image.asset('assets/images/gold_medal 1.png', width: 150, height: 150,)),

                  // Third position
                  Positioned(
                  top: 780, 
                  left: 290,
                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFD434FE)
                      ),
                      color: const Color(0xFFD434FE).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('2nd', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        Text('Runner', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14,)),
                        Text('N300,000', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontSize: 14, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 30,)
                      ],
                    ),
                  )),
                   Positioned(
                  top: 720,
                  left: 293,
                  child: Image.asset('assets/images/silver_medal 1.png', width: 100, height: 100,)),
        ]),
      ],
    );
  }
}
