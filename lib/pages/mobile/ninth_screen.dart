import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

import '../../widgets/widgets.dart';

class NinthScreen extends StatelessWidget {
  const NinthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 900,
          right: 50,
          child: Image.asset(
            'assets/images/Vector.png',
            width: 400,
            height: 400,
          )),
      Positioned(
        bottom: 0,
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
              'assets/images/Lens-left.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
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
            opacity: 0.2,
            child: Image.asset(
              'assets/images/Lens-right.png',
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Privacy Policy and',
                style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 32,
                    color: Colors.white)),
            const Text('Terms',
                style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 32,
                    color: Color(0xFFD434FE))),
            Text('Last updated on September 12, 2023.',
                style:
                    GoogleFonts.montserrat(color: Colors.white, fontSize: 14)),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Below are our privacy & policy, which outline\na lot of goodies. it’s our aim to always take of our\nparticipant',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9).withOpacity(0.05),
                    border: Border.all(color: const Color(0xFFD434FE)),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'At getlinked tech Hackathon 1.0, we value your privacy\nand are committed to protecting your personal information.\nThis Privacy Policy outlines how we collect, use, disclose,\nand safeguard your data when you participate in our tech\nhackathon event. By participating in our event, you consent\nto the practices described in this policy.',
                        style: CustomFont.customFontWhite(16.0),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                          maxLines: 16,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Licensing Policy',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD434FE),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      Text('Here are terms of our Standard License:',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/mark.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                              'The Standard License grants you a\nnon-exclusive right to navigate and\nregister for our event',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14),
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                          maxLines: 10,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/mark.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                              'You are licensed to use the item\navailable at any free source\nsites, for\nyour project developement',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14))
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Button(text: 'Register'),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100,),
            Image.asset('assets/images/manLock.png', width: 500, height: 500)
          ],
        ),
      ),
    ]);
  }
}
