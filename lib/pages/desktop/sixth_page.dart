import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

import '../../widgets/widgets.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children:[ Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Timeline',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 32,
                            color: Colors.white)),
                    Text(
                      'Here is the breakdown of the time we anticipate\nusing for the upcoming event.',
                      style: CustomFont.customFontWhite(16.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              // First Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 110,),
                  Text('Hackathon Announcement', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.end,),
                  Text('The getlinked tech hackathon 1.0 is formally announced\nto the general public and teams begin to get ready to register', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14), textAlign: TextAlign.end,),
                  const SizedBox(height: 60,),
                  Text('November 18, 2023', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20),),
                  const Text('   \n   '),
                  const SizedBox(height: 60,),
                  Text('Teams Registration ends', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.end,),
                  Text('Interested Participants are no longer Allowed to\nregister', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14), textAlign: TextAlign.end,),
                  const SizedBox(height: 60,),
                  Text('November 18, 2023', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20),),
                  const Text('   \n   '),
                  const SizedBox(height: 60,),
                  Text('Getlinked Hackathon 1.0 Offically Begins', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.end,),
                  Text('Accepted teams can now proceed to build their\nground breaking skill driven solutions', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14), textAlign: TextAlign.end,),
                  const SizedBox(height: 60,),
                  Text('November 18, 2023', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20),),
                  const Text('   \n   '),
                  // const SizedBox(height: 40,),
                  
                ],
              ),
      
              // Second Column
              const Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      color: Color(0xFFD434FE),
                      thickness: 2,
                    ),
                  ),
                  CircleButton(text: '1'),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: Color(0xFFD434FE),
                      thickness: 2,
                    ),
                  ),
                  CircleButton(text: '2'),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: Color(0xFFD434FE),
                      thickness: 2,
                    ),
                  ),
                  CircleButton(text: '3'),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: Color(0xFFD434FE),
                      thickness: 2,
                    ),
                  ),
                  CircleButton(text: '4'),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: Color(0xFFD434FE),
                      thickness: 2,
                    ),
                  ),
                  CircleButton(text: '5'),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: Color(0xFFD434FE),
                      thickness: 2,
                    ),
                  ),
                  CircleButton(text: '6'),
                ],
              ),
      
              // Third Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 160,),
                  Text('November 18, 2023', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.start,),
                  const Text('   \n   '),
                  const SizedBox(height: 60,),
                  Text('Hackathon Announcement', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.start,),
                  Text('The getlinked tech hackathon 1.0 is formally announced\nto the general public and teams begin to get ready to register', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14), textAlign: TextAlign.start,),
                  const SizedBox(height: 60,),
                  Text('November 18, 2023', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.start,),
                  const Text('   \n   '),
                  const SizedBox(height: 60,),
                  Text('Announcement of the accepted teams\nand ideas', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.start,),
                  Text('All teams whom idea has been accepted into getlinked tech\nhackathon 1.0 2023 are formally announced', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14), textAlign: TextAlign.start,),
                  const SizedBox(height: 60,),
                  Text('November 18, 2023', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.start,),
                  const Text('   \n   '),
                  const SizedBox(height: 50,),
                  Text('Demo Day', style: GoogleFonts.montserrat(color: const Color(0xFFD434FE), fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.start,),
                  Text('Teams get the opportunity to pitch their projects to judges.\nThe winner of the hackathon will also be announced on\nthis day', style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14), textAlign: TextAlign.start,),
                  
                ],
              )
            ],
          ),
          const SizedBox(height: 150,)
          ],
        ),
        Positioned(
          top: 190,
          left: 390,
          child: 
        Image.asset('assets/images/star pu.png')),
        Positioned(
          bottom: 300,
          left: 280,
          child: 
        Image.asset('assets/images/star2.png')),
        Positioned(
          top: 500,
          right: 280,
          child: 
        Image.asset('assets/images/star.png')),
      ]),
    );
  }
}
