import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_font.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 15, 11, 29)),
        child: Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
            child: Column(
              
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
                                  fontSize: 30,
                                  color: Colors.white)),
                          TextSpan(
                              text: 'linked',
                              style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD434FE))),
                        ],
                      ),
                    ),
                    Text(
                      'Getlinked Tech Hackathon is a technology\ninnovation program established by a group\nof organizations with the aim of showcasing\nyoung and talented individuals in the field\nof technology',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Row(
                children: [
                  Text(
                          'Terms of Use',
                          style: CustomFont.customFontWhite(12.0),
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
                          style: CustomFont.customFontWhite(12.0),
                        ),
    
              ],),
              const SizedBox(
                      height: 30,
                    ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Useful Links',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE), 
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Overview',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Timeline',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'FAQs',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Register',
                      style: CustomFont.customFontWhite(12.0),
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
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 8,),
                        Image.asset('assets/images/instagram.png'),
                        const SizedBox(width: 8,),
                        Image.asset('assets/images/x.png'),
                        const SizedBox(width: 8,),
                        Image.asset('assets/images/facebook.png'),
                        const SizedBox(width: 8,),
                        Image.asset('assets/images/linkedin.png'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                      height: 30,
                    ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Us',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontSize: 16,
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
                                color: Colors.white, fontSize: 12))
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
                                color: Colors.white, fontSize: 12))
                      ],
                    ),
                  ],
                ),
              
              
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('All rights reserved. © getlinked Ltd.', style: CustomFont.customFontWhite(12.0),)
                ],
              ),
              ],
            ),
          ),
          Positioned(
            top: 90,
            left: 10,
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
      ),
    );
  
  }
}