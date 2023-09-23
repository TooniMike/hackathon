import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 70,
        right: 30,
      ),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Frequently Ask',
                      style: TextStyle(
                          fontFamily: 'ClashDisplay',
                          fontSize: 32,
                          color: Colors.white)),
                  const Text('Question',
                      style: TextStyle(
                          fontFamily: 'ClashDisplay',
                          fontSize: 32,
                          color: Color(0xFFD434FE))),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'We got answers to the questions that you might\nwant to ask about',
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 14)),
                        TextSpan(
                          text: ' getlinked Hackathon 1.0',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 500,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Can I work on a project I started before the hackathon?',
                              style: CustomFont.customFontWhite(16.0),
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xFFD434FE), fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What happens if I need help during the hackathon?',
                              style: CustomFont.customFontWhite(16.0),
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xFFD434FE), fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What happens if I don\'t have an idea for a project?',
                              style: CustomFont.customFontWhite(16.0),
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xFFD434FE), fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Can I join a team or do I have to come with one?',
                              style: CustomFont.customFontWhite(16.0),
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xFFD434FE), fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What happens after the hackathon ends',
                              style: CustomFont.customFontWhite(16.0),
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xFFD434FE), fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Can I work on a project I started before the hackathon?',
                              style: CustomFont.customFontWhite(16.0),
                            ),
                            const Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xFFD434FE), fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                
                ],
              ),
              Image.asset(
                'assets/images/casual.png',
                width: 550,
                height: 550,
              ),
            ],
          ),
        ),
        Positioned(
            top: 90, left: 0, child: Image.asset('assets/images/star pu.png')),
        Positioned(
            top: 105,
            right: 250,
            child: Image.asset('assets/images/sata gra.png')),
        Positioned(
            top: 210,
            right: 550,
            child: Image.asset('assets/images/sata gra.png')),
        Positioned(
            top: 60, right: 315, child: Image.asset('assets/images/que.png')),
        Positioned(
            top: 120, right: 180, child: Image.asset('assets/images/que1.png')),
        Positioned(
            top: 120, right: 450, child: Image.asset('assets/images/que1.png')),
        Positioned(
            top: 410,
            right: 500,
            child: Image.asset('assets/images/star2.png')),
        Positioned(
            bottom: 0,
            right: 150,
            child: Image.asset('assets/images/star.png')),
      ]),
    );
  }
}
