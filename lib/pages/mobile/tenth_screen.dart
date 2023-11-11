import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/custom_font.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.sp),
      child: Container(
        height: 550.sp,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 15, 11, 29)),
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(
                top: 20.sp, left: 30.sp, right: 30.sp, bottom: 10.sp),
            child: Column(
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
                                fontSize: 30.sp,
                                color: Colors.white),
                          ),
                          TextSpan(
                            text: 'linked',
                            style: TextStyle(
                              fontFamily: 'ClashDisplay',
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFD434FE),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Getlinked Tech Hackathon is a technology innovation program established by a group of organizations with the aim of showcasing young and talented individuals in the field of technology',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Terms of Use',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    SizedBox(
                      height: 20.sp,
                      child: VerticalDivider(
                        color: const Color(0xFFD434FE),
                        thickness: 2.sp,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Useful Links',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      'Overview',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      'Timeline',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      'FAQs',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      'Register',
                      style: CustomFont.customFontWhite(12.0),
                    ),
                    SizedBox(height: 10.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Follow us',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFD434FE),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 8.sp),
                        Image.asset('assets/images/instagram.png'),
                        SizedBox(width: 8.sp),
                        Image.asset('assets/images/x.png'),
                        SizedBox(width: 8.sp),
                        Image.asset('assets/images/facebook.png'),
                        SizedBox(width: 8.sp),
                        Image.asset('assets/images/linkedin.png'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Us',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/call.png'),
                        SizedBox(
                          width: 20.sp,
                        ),
                        Text(
                          '+234 679 81819',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12.sp),
                        )
                      ],
                    ),
                    SizedBox(height: 10.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/location.png'),
                        SizedBox(
                          width: 20.sp,
                        ),
                        Text(
                          '27,Alara Street\nYaba 100012\nLagos State',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12.sp),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'All rights reserved. © getlinked Ltd.',
                      style: CustomFont.customFontWhite(12.0),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 50.sp,
              right: 25.sp,
              child: Image.asset(
                'assets/images/star.png',
                height: 15.sp,
                width: 15.sp,
              )),
          Positioned(
              top: 300.sp,
              left: 750.sp,
              child: Image.asset(
                'assets/images/sata gra.png',
                height: 10.sp,
                width: 10.sp,
              )),
          Positioned(
            top: 90.sp,
            left: 5.sp,
            child: Image.asset('assets/images/star2.png',
                height: 15.sp, width: 15.sp),
          ),
          Positioned(
              top: 250.sp,
              right: 10.sp,
              child: Image.asset(
                'assets/images/star.png',
                height: 15.sp,
                width: 15.sp,
              )),
        ]),
      ),
    );
  }
}
