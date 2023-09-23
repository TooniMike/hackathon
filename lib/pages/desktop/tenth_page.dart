import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

class TenthPage extends StatelessWidget {
  const TenthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 15, 11, 29)),
      child: Stack(
        children:[ Padding(
          padding: const EdgeInsets.only(top: 90, left: 100, right: 100),
          child: Column(
            
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'get',
                                style: TextStyle(
                                    fontFamily: 'ClashDisplay',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'linked',
                                style: TextStyle(
                                    fontFamily: 'ClashDisplay',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFD434FE))),
                          ],
                        ),
                      ),
                      Text(
                        'Getlinked Tech Hackathon is a technology innovation program\nestablished by a group of organizations with the aim of showcasing\nyoung and talented individuals in the field of technology',
                        style: CustomFont.customFontWhite(16.0),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Useful Links',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE), 
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'Overview',
                        style: CustomFont.customFontWhite(16.0),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'Timeline',
                        style: CustomFont.customFontWhite(16.0),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'FAQs',
                        style: CustomFont.customFontWhite(16.0),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'Register',
                        style: CustomFont.customFontWhite(16.0),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Follow us',
                            style: GoogleFonts.montserrat(
                                color: const Color(0xFFD434FE),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 10,),
                          Image.asset('assets/images/instagram.png'),
                          const SizedBox(width: 10,),
                          Image.asset('assets/images/x.png'),
                          const SizedBox(width: 10,),
                          Image.asset('assets/images/facebook.png'),
                          const SizedBox(width: 10,),
                          Image.asset('assets/images/linkedin.png'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/call.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                              '+234 679 81819',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/location.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                              '27,Alara Street\nYaba 100012\nLagos State',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            
            Row(
              children: [
                Text(
                        'Terms of Use',
                        style: CustomFont.customFontWhite(16.0),
                      ),
                      const SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    Text(
                        'Privacy Policy',
                        style: CustomFont.customFontWhite(16.0),
                      ),
            ],),
            const SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('All rights reserved. © getlinked Ltd.', style: CustomFont.customFontWhite(16.0),)
              ],
            )
            ],
          ),
        ),
        Positioned(
          top: 90,
          left: 40,
          child: Image.asset('assets/images/star.png', height: 20, width: 20,)
        ),
        Positioned(
          top: 300,
          left: 750,
          child: Image.asset('assets/images/sata gra.png', height: 20, width: 20,)
        ),
        Positioned(
          top: 90,
          right: 350,
          child: Image.asset('assets/images/star2.png', height: 20, width: 20,)
        ),
        Positioned(
          top: 250,
          right: 10,
          child: Image.asset('assets/images/star.png', height: 20, width: 20,)
        ),
      ]),
    );
  
  }
}
