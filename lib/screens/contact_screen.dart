// ignore_for_file: use_build_context_synchronously
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/screens/home_screen.dart';
import 'package:hackathon/services/config.dart';
import 'package:hackathon/services/white_space.dart';
import 'package:hackathon/widgets/custom_font.dart';
import 'package:http/http.dart' as http;
import '../widgets/widgets.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
  final Size preferredSize = const Size.fromHeight(100);
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  TextEditingController name = TextEditingController();

  Future<void> postData() async {
    final url = Uri.parse('${Config.baseUrl}/hackathon/contact-form');

    final Map<String, dynamic> data = {
      "email": email.text,
      "first_name": name.text,
      "message": message.text,
    };

    final headers = {'Content-Type': 'application/json'};

    try {
      final response =
          await http.post(url, headers: headers, body: jsonEncode(data));

      if (response.statusCode == 201) {
        final responseData = json.decode(response.body);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Successful'),
              content: Text(
                  'Your request was successful with ID ${responseData['id']}, you will recieve a notification shortly'),
              actions: <Widget>[
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Failed'),
              content: const Text('Your request was not successful'),
              actions: <Widget>[
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Handle exceptions
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Unable to confirm your request, try again later'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? desktopAppBar()
            : AppBar(
                backgroundColor: const Color(0xFF150E28),
                leading: IconTheme(
                  data: const IconThemeData(
                    color: Colors.white,
                  ),
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [Color(0xFF903AFF), Color(0xFFFF26B9)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ).createShader(bounds);
                    },
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),
        backgroundColor: const Color(0xFF150E28),
        body: Responsive.isDesktop(context)
            ? _desktopBody()
            : SingleChildScrollView(
                child: Stack(children: [
                  _mobileBody(),
                ]),
              ));
  }

  SingleChildScrollView _desktopBody() {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 60, right: 100, left: 100, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/sata gra.png'),
                Image.asset('assets/images/star2.png'),
                const WhiteSpace(
                  height: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Get in touch',
                        style: TextStyle(
                            fontFamily: 'ClashDisplay',
                            fontSize: 26,
                            color: Color(0xFFD434FE))),
                    const WhiteSpace(
                      height: 30,
                    ),
                    Text(
                      'Contact\nInformation',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const WhiteSpace(
                      height: 20,
                    ),
                    Text(
                      '27,Alara Street\nYaba 100012\nLagos State',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const WhiteSpace(
                      height: 20,
                    ),
                    Text(
                      'Call Us : 07067981819',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const WhiteSpace(
                      height: 20,
                    ),
                    Text(
                      'we are open from Monday-Friday\n08:00am - 05:00pm',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const WhiteSpace(
                      height: 20,
                    ),
                    Text(
                      'Share on',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFD434FE),
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    const WhiteSpace(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/instagram.png'),
                        const WhiteSpace(
                          width: 8,
                        ),
                        Image.asset('assets/images/x.png'),
                        const WhiteSpace(
                          width: 8,
                        ),
                        Image.asset('assets/images/facebook.png'),
                        const WhiteSpace(
                          width: 8,
                        ),
                        Image.asset('assets/images/linkedin.png'),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Questions or need assistance?',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 20,
                                color: Color(0xFFD434FE))),
                        const Text('Let us know about it!',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 20,
                                color: Color(0xFFD434FE))),
                        const WhiteSpace(
                          height: 30,
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: name,
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const WhiteSpace(
                          height: 30,
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: email,
                          decoration: const InputDecoration(
                            labelText: 'Mail',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const WhiteSpace(
                          height: 30,
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          maxLines: 3,
                          controller: message,
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle: const TextStyle(color: Colors.white),
                            alignLabelWithHint: true,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 20).w,
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const WhiteSpace(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                        onPressed: () {
                          postData();
                        },
                        child: Container(
                            height: 50, 
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF903AFF), Color(0xFFFE34B9)],
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Submit',
                              style: (CustomFont.customFontWhite(16.0)),
                            ))))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _mobileBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 60, bottom: 50),
        child: Column(
          children: [
            const Text('Questions or need assistance? Let us know about it',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 22,
                    color: Color(0xFFD434FE))),
            const WhiteSpace(
              height: 20,
            ),
            Text(
              'Email us below to any question related to our event',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: CustomFont.customFontWhite(16),
            ),
            const WhiteSpace(
              height: 20,
            ),
            TextField(
              controller: name,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Team\'s name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const WhiteSpace(
              height: 30,
            ),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Topic',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const WhiteSpace(
              height: 30,
            ),
            TextField(
              controller: email,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const WhiteSpace(
              height: 30,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              controller: message,
              decoration: const InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 60.0),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                alignLabelWithHint: true,
              ),
            ),
            const WhiteSpace(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          postData();
                        },
                        child: Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF903AFF), Color(0xFFFE34B9)],
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Submit',
                              style: (CustomFont.customFontWhite(16.0)),
                            ))))
                  ],
                ),
                const WhiteSpace(
                  height: 30,
                ),
                Text(
                  'Share on',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      color: const Color(0xFFD434FE),
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/instagram.png',
                      width: 15,
                    ),
                    const WhiteSpace(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/x.png',
                      width: 15,
                    ),
                    const WhiteSpace(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 15,
                    ),
                    const WhiteSpace(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/linkedin.png',
                      width: 15,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar desktopAppBar() {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        children: [
          const WhiteSpace(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 50,
                  width: 50,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  _AppBarButton(
                    title: 'Timeline',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                    }
                  ),
                  const WhiteSpace(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'Overview',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                    }
                  ),
                  const WhiteSpace(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'FAQs',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                    }
                  ),
                  const WhiteSpace(
                    width: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [Color(0xFF903AFF), Color(0xFFFF26B9)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: Text('Contact',
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Button(text: 'Register'),
              ),
            ],
          ),
          const WhiteSpace(
            height: 20,
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.grey[600],
          height: 1,
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const _AppBarButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: (CustomFont.customFontWhite(16.0)),
      ),
    );
  }
}
