import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/widgets/custom_font.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 60, top: 60),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Timeline',
                    style: TextStyle(
                        fontFamily: 'ClashDisplay',
                        fontSize: 26,
                        color: Colors.white)),
                Text(
                  'Here is the breakdown of the time we\nanticipate using for the upcoming event.',
                  style: CustomFont.customFontWhite(12.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/star pu.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hackathon Announcement',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          
                          'The getlinked tech hackathon 1.0 is formally\nannounced to the general public and teams\nbegin to get ready to register',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
                        ),
                      ),
                      child: Center(
                        child: Text('1',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'November 18, 2023',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),
                
                // Second
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Teams Registration begins',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          'Interested teams can now show their\ninterest in the getlinked tech hackathon 1.0\n2023 by proceeding to register',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
                        ),
                      ),
                      child: Center(
                        child: Text('2',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'November 18, 2023',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),

                //Third
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Teams Registration ends',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          'Interested Participants are no longer\nAllowed to register',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
                        ),
                      ),
                      child: Center(
                        child: Text('3',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'November 18, 2023',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),

                // forth
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Announcement of the accepted teams\nand ideas',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'All teams whom idea has been accepted\ninto getlinked tech hackathon 1.0 2023 are\nformally announced',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
                        ),
                      ),
                      child: Center(
                        child: Text('4',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'November 18, 2023',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),

                // fifth
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Getlinked Hackathon 1.0 Offically Begins',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        Text(
                          'Accepted teams can now proceed to build\ntheir ground breaking skill driven solutions',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
                        ),
                      ),
                      child: Center(
                        child: Text('5',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'November 18, 2023',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),

                // Sixth
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: Color(0xFFD434FE),
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Demo Day',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          'Teams get the opportunity to pitch their\nprojects to judges. The winner of the\nhackathon will also be announced on this day',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFD434FE), Color(0xFF903AFF)],
                        ),
                      ),
                      child: Center(
                        child: Text('6',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'November 18, 2023',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      
    ]);
  }
}
