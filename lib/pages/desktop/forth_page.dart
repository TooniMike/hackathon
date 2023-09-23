import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/button.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Stack(
        children:[ 
          Positioned(
          top: 125,
          left: 100,
          child: Image.asset('assets/images/Ellipse 1.png', width: 100, height: 100,),
        ),
        Positioned(
          top: 0,
          left: 0,
          child:Image.asset('assets/images/Lens-left.png',),
        ),
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
                          'assets/images/Lens-right.png', 
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
        
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/sales.png', width: 550, height: 550,),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Judging Criteria',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 32,
                                color: Colors.white)),
                        const Text('Key attributes',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 32,
                                color: Color(0xFFD434FE))),
                                const SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Innovation and Creativity:',
                                style: GoogleFonts.montserrat(color: const Color(0xFFFF26B9), fontSize: 16, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: ' Evaluate the uniqueness and creativity of the\nsolution. Consider whether it addresses a real-world problem in a novel\nway or introduces innovative features.',
                                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Functionality:',
                                style: GoogleFonts.montserrat(color: const Color(0xFFFF26B9), fontSize: 16, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: ' Assess how well the solution works. Does it perform its\nintended functions effectively and without major issues? Judges would\nconsider the completeness and robustness of the solution.',
                                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Impact and Relevance:',
                                style: GoogleFonts.montserrat(color: const Color(0xFFFF26B9), fontSize: 16, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: ' Determine the potential impact of the solution\nin the real world. Does it address a significant problem, and is it relevant\nto the target audience? Judges would assess the potential social,\neconomic, or environmental benefits.',
                                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Technical Complexity:',
                                style: GoogleFonts.montserrat(color: const Color(0xFFFF26B9), fontSize: 16, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: ' Evaluate the technical sophistication of the solution.\nJudges would consider the complexity of the code, the use of advanced\ntechnologies or algorithms, and the scalability of the solution.',
                                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Adherence to Hackathon Rules:',
                                style: GoogleFonts.montserrat(color: const Color(0xFFFF26B9), fontSize: 16, fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                text: ' Judges will Ensure that the team adhered\nto the rules and guidelines of the hackathon, including deadlines, use of\nspecific technologies or APIs, and any other competition-specific requirements.',
                                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40,),
                        const Button(text: 'Register'),
                        const SizedBox(height: 140,),
                      ],
                    ),
                  ),
                ],
              ),
            ],
                  ),
          ),
        Positioned(
          top: 300,
          left: 300,
          child: Image.asset('assets/images/star2.png'),
        ),
        Positioned(
          top: 0,
          left: 200,
          child: Image.asset('assets/images/star pu.png'),
        ),
        Positioned(
          top: 550,
          right: 800,
          child: Image.asset('assets/images/star.png'),
        ),
        
      ]),
    );
  }
}
