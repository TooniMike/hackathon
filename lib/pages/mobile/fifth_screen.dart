import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/custom_font.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 60),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Frequently Ask',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 26,
                        color: Colors.white)),
                const Text('Question',
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
                          text:
                              'We got answers to the questions that you might\nwant to ask about',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12)),
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
                  height: 60,
                ),
                SizedBox(
                  width: 500,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Can I work on a project I started before the\nhackathon?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: CustomFont.customFontWhite(12.0),
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
                            'What happens if I need help during the\nhackathon?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: CustomFont.customFontWhite(12.0),
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
                            'What happens if I don\'t have an idea for\na project?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: CustomFont.customFontWhite(12.0),
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
                            'Can I join a team or do I have to come\nwith one?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: CustomFont.customFontWhite(12.0),
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
                            'What happens after the hackathon\nends',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: CustomFont.customFontWhite(12.0),
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
                            'Can I work on a project I started before the\nhackathon?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: CustomFont.customFontWhite(12.0),
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
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
            Image.asset('assets/images/casual.png')
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
        top: 730,
        right: 250,
        child: Image.asset(
          'assets/images/sata gra.png',
          width: 10,
          height: 10,
        ),
      ),
      Positioned(
        top: 710,
        left: 180,
        child: Image.asset(
          'assets/images/que.png',
          width: 50,height: 50,
        ),
      ),
      Positioned(
        top: 750,
        left: 100,
        child: Image.asset(
          'assets/images/que1.png',
          width: 50,height: 50,
        ),
      ),
      Positioned(
        top: 750,
        left: 250,
        child: Image.asset(
          'assets/images/que1.png',
          width: 50,height: 50,
        ),
      ),
      Positioned(
        top: 850,
        left: 150,
        child: Image.asset(
          'assets/images/sata gra.png',
          width: 8,
          height: 8,
        ),
      ),
      Positioned(
        top: 920,
        left: 100,
        child: Image.asset(
          'assets/images/star2.png',
          width: 15,
          height: 15,
        ),
      ),
    ]);
  
  }
}
