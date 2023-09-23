import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeventhPage extends StatelessWidget {
  const SeventhPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 15, 11, 29)),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Column(
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
                              'Highlight of the prizes or rewards for winners and\nfor participants.',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 0, 
              left: 0,
              child: Image.asset('assets/images/Purple-Lens.png', )),
              Positioned(
              top: 0, 
              left: 280,
              child: Image.asset('assets/images/sata gra.png',)),
              Positioned(
              bottom: 0, 
              left: 280,
              child: Image.asset('assets/images/star.png')),
              Positioned(
              top: 200, 
              left: 680,
              child: Image.asset('assets/images/star.png')),
              Positioned(
              top: 120, 
              left: 990,
              child: Image.asset('assets/images/sata gra.png')),
              Positioned(
              top: 260, 
              right: 220,
              child: Image.asset('assets/images/star.png')),
              Positioned(
                    top: 0,
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
                          'assets/images/Straight-Lens.png', 
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
          Positioned(
              top: 180, 
              left: 100,
              child: Image.asset('assets/images/cup.png', width: 400, height: 400,)),
              
            // The Second Position
              Positioned(
              top: 360, 
              left: 600,
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFD434FE).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('2nd', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('Runner', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16,)),
                    Text('N300,000', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30,)
                  ],
                ),
              )),
              Positioned(
              top: 280,
              left: 600,
              child: Image.asset('assets/images/silver_medal 1.png', width: 150, height: 150,)),

              // The first Position
              Positioned(
              top: 370, 
              left: 780,
              child: Container(
                height: 210,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFF903AFF).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('1st', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('Runner', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16,)),
                    Text('N400,000', style: GoogleFonts.montserrat(color: const Color(0xFF903AFF), fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30,)
                  ],
                ),
              )),
              Positioned(
              top: 220,
              left: 740,
              child: Image.asset('assets/images/gold_medal 1.png', width: 230, height: 230,)),

              // The third Position
              Positioned(
              top: 360,
              left: 960,
              child: Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFD434FE).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('3rd', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('Runner', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16,)),
                    Text('N150,000', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 30,)
                  ],
                ),
              )),
              Positioned(
              top: 280,
              left: 960,
              child: Image.asset('assets/images/gold_medal 1.png', width: 150, height: 150,)),
        ]),
      ),
    );
  }
}
