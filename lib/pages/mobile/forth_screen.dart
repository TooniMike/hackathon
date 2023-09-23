import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/widgets.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        right: 1,
        bottom: -400,
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
      Positioned(
        right: 1,
        top: -150,
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
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 60, top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/star pu.png', width: 20, height: 20,),
                const SizedBox(height: 30,)
              ],
            ),
            Image.asset(
              'assets/images/sales.png',
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Judging Criteria',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 26,
                        color: Colors.white)),
                const Text('Key attributes',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 22,
                        color: Color(0xFFD434FE))),
                const SizedBox(
                  height: 20,
                ),
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
                                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14,),
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
              ],
            ),
            const Button(text: 'Register')
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
    ]);
  
  }
}