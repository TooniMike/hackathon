import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/services/white_space.dart';
import 'package:hackathon/widgets/custom_font.dart';

class TenthPage extends StatelessWidget {
  const TenthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 15, 11, 29)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90.h, left: 100.w, right: 100.w),
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
                            children: <TextSpan>[
                              TextSpan(
                                text: 'get',
                                style: TextStyle(
                                    fontFamily: 'ClashDisplay',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.sp,
                                    color: Colors.white),
                              ),
                              TextSpan(
                                text: 'linked',
                                style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFD434FE),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *.5,
                          child: Text(
                            'Getlinked Tech Hackathon is a technology innovation program established by a group of organizations with the aim of showcasing young and talented individuals in the field of technology',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                            style: CustomFont.customFontWhite(16.0),
                          ),
                        ),
                        const WhiteSpace(
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
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Text(
                          'Overview',
                          style: CustomFont.customFontWhite(16.0),
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Text(
                          'Timeline',
                          style: CustomFont.customFontWhite(16.0),
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Text(
                          'FAQs',
                          style: CustomFont.customFontWhite(16.0),
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Text(
                          'Register',
                          style: CustomFont.customFontWhite(16.0),
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Follow us',
                              style: GoogleFonts.montserrat(
                                  color: const Color(0xFFD434FE),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            const WhiteSpace(
                              width: 10,
                            ),
                            Image.asset('assets/images/instagram.png'),
                            const WhiteSpace(
                              width: 10,
                            ),
                            Image.asset('assets/images/x.png'),
                            const WhiteSpace(
                              width: 10,
                            ),
                            Image.asset('assets/images/facebook.png'),
                            const WhiteSpace(
                              width: 10,
                            ),
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
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/call.png'),
                            const WhiteSpace(
                              width: 20,
                            ),
                            Text(
                              '+234 679 81819',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14.sp),
                            ),
                          ],
                        ),
                        const WhiteSpace(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/location.png'),
                            const WhiteSpace(
                              width: 20,
                            ),
                            Text(
                              '27,Alara Street\nYaba 100012\nLagos State',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14.sp),
                            ),
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
                    SizedBox(
                      height: 20.h,
                      child: VerticalDivider(
                        color: const Color(0xFFD434FE),
                        thickness: 2.w,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      style: CustomFont.customFontWhite(16.0),
                    ),
                  ],
                ),
                const WhiteSpace(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'All rights reserved. © getlinked Ltd.',
                      style: CustomFont.customFontWhite(16.0),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: 90.h,
              left: 40.w,
              child: Image.asset(
                'assets/images/star.png',
                height: 20.h,
                width: 20.w,
              )),
          Positioned(
              top: 300.h,
              left: 750.w,
              child: Image.asset(
                'assets/images/sata gra.png',
                height: 20.h,
                width: 20.w,
              )),
          Positioned(
              top: 90.h,
              right: 350.w,
              child: Image.asset(
                'assets/images/star2.png',
                height: 20.h,
                width: 20.w,
              )),
          Positioned(
            top: 250.h,
            right: 10.w,
            child: Image.asset(
              'assets/images/star.png',
              height: 20.h,
              width: 20.w,
            ),
          ),
        ],
      ),
    );
  }
}
