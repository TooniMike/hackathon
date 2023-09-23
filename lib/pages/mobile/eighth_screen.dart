import 'package:flutter/material.dart';
import 'package:hackathon/widgets/custom_font.dart';

class EightScreen extends StatelessWidget {
  const EightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ 
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
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Partners and Sponsors',
                  style: TextStyle(
                      fontFamily: 'ClashDisplay', fontSize: 25, color: Colors.white)),
            ],
          ),
          Text(
            'Getlinked Hackathon 1.0 is honored to have the\nfollowing major companies as its partners and\nsponsors.',
            style: CustomFont.customFontWhite(14.0),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
                          maxLines: 3,
          ),
          const SizedBox(height: 70),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
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
                        width: 100,
                      ),
                      const SizedBox(
                        height: 80,
                        child: VerticalDivider(
                          color: Color(0xFFD434FE),
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/images/Liberty.png',
                            width: 100),
                      ),
                      const SizedBox(
                        height: 80,
                        child: VerticalDivider(
                          color: Color(0xFFD434FE),
                          thickness: 2,
                        ),
                      ),
                      Image.asset(
                        'assets/images/Winwise.png',
                        width: 100,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width:
                            100, 
                        child: Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        width:
                            100,
                        child: Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        width:
                            90,
                        child: Divider(
                          color: Color(0xFFD434FE),
                          height: 1,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/wisper.png',
                        width: 100,
                      ),
                      const SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Color(0xFFD434FE),
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/images/Paybox.png',
                            width: 100),
                      ),
                      const SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Color(0xFFD434FE),
                          thickness: 2,
                        ),
                      ),
                      Image.asset(
                        'assets/images/Vizual.png',
                        width: 100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ]);
  
  }
}
