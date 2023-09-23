import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/button.dart';
import 'package:hackathon/widgets/custom_font.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:90),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                  Image.asset('assets/images/metrix.png'),
                  Positioned(
                    top: -120,
                    left: -30,
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
                          height: 800,
                          width: 800,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 50,
                    child: Text(
                      'Igniting a Revolution in HR Innovation',
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 60,
                    child: Image.asset('assets/images/vector 4.png'),
                  ),
                  Positioned(
                    top: 60,
                    left: 90,
                    child: Image.asset('assets/images/star.png'),
                  ),
                  Positioned(
                    top: 100,
                    right: 600,
                    child: Image.asset('assets/images/star2.png'),
                  ),
                  Positioned(
                    top: 100,
                    right: 0,
                    child: Image.asset('assets/images/flare_len01.png', width: 600, height: 600,),
                  ),
                  Positioned(
                    top: 100,
                    right: 0,
                    child: Image.asset('assets/images/man.png'),
                  ),
                  Positioned(
                    top: 100,
                    right: 30,
                    child: Image.asset('assets/images/network.png'),
                  ),
                  Positioned(
                    top: 155,
                    left: 370,
                    child: Image.asset('assets/images/Bulb.png'),
                  ),
                  Positioned(
                    top: 500,
                    left: 400,
                    child: Image.asset('assets/images/star2.png'),
                  ),
                  Positioned(
                    top: 200,
                    left: 0,
                    child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('getlinked Tech',
                                  style: TextStyle(
                                      fontFamily: 'ClashDisplay',
                                      fontSize: 58,
                                      color: Colors.white)),
                              Row(
                                children: [
                                  const Text('Hackathon ',
                                      style: TextStyle(
                                          fontFamily: 'ClashDisplay',
                                          fontSize: 58,
                                          color: Colors.white)),
                                  const Text('1.0',
                                      style: TextStyle(
                                          fontFamily: 'ClashDisplay',
                                          fontSize: 58,
                                          color: Color(0xFFD434FE))),
                                  Image.asset('assets/images/chain.png'),
                                  Image.asset('assets/images/light.png'),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Participate in getlinked tech Hackathon 2023 stand \n a chance to win a Big prize',
                            style: CustomFont.customFontWhite(16.0),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Button(text: 'Register'),
                        ],
                      ),
                    ],
                  ),
                  ),
                  Positioned(
                    top: 600,
                    left: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text('00', style: GoogleFonts.unicaOne(color: Colors.white, fontSize: 100),),
                            Text('H', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 10),),
                            const SizedBox(width: 20,),
                            Text('00', style: GoogleFonts.unicaOne(color: Colors.white, fontSize: 100),),
                            Text('M', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 10),),
                            const SizedBox(width: 20,),
                            Text('00', style: GoogleFonts.unicaOne(color: Colors.white, fontSize: 100),),
                            Text('S', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 10),),
                          ],
                        ),
                        
                      ],
                    ),
                    ),
                ]),
              )
            ],
          ),
        ],
      ),
    );
      
  }
}