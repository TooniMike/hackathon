import 'package:flutter/material.dart';
import 'package:hackathon/widgets/custom_font.dart';

class EighthPage extends StatelessWidget {
  const EighthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 200, left: 160, child: Image.asset('assets/images/star pu.png')),
      Positioned(
          top: 380,
          left: 800,
          child: Image.asset('assets/images/sata gra.png')),
      Positioned(
        top: 0,
        left: 0,
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
            opacity: 0.5,
            child: Image.asset(
              'assets/images/Lens-right.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Positioned(
          top: 780, left: 800, child: Image.asset('assets/images/star.png')),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Partners and Sponsors',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 32,
                            color: Colors.white)),
                    Text(
                      'Getlinked Hackathon 1.0 is honored to have the following major\ncompanies as its partners and sponsors.',
                      style: CustomFont.customFontWhite(16.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: const Color(0xFFD434FE), width: 1.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Liberty company.png',
                          width: 200,
                        ),
                        const SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: Color(0xFFD434FE),
                            thickness: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/images/Liberty.png',
                              width: 200),
                        ),
                        const SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: Color(0xFFD434FE),
                            thickness: 3,
                          ),
                        ),
                        Image.asset(
                          'assets/images/Winwise.png',
                          width: 200,
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:
                              180, // Set the desired width to reduce the length of the divider
                          child: Divider(
                            color: Color(0xFFD434FE),
                            height: 1,
                            thickness: 3,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width:
                              180, // Set the desired width to reduce the length of the divider
                          child: Divider(
                            color: Color(0xFFD434FE),
                            height: 1,
                            thickness: 3,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width:
                              180, // Set the desired width to reduce the length of the divider
                          child: Divider(
                            color: Color(0xFFD434FE),
                            height: 1,
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/wisper.png',
                          width: 200,
                        ),
                        const SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: Color(0xFFD434FE),
                            thickness: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/images/Paybox.png',
                              width: 200),
                        ),
                        const SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: Color(0xFFD434FE),
                            thickness: 3,
                          ),
                        ),
                        Image.asset(
                          'assets/images/Vizual.png',
                          width: 200,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
