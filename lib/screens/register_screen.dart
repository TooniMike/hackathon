// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/screens/home_screen.dart';
import 'package:hackathon/widgets/custom_font.dart';
import 'package:http/http.dart' as http;
import '../services/config.dart';
import '../widgets/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int selectedValue = 1;
  List<Map<String, dynamic>> items = [];
  bool isLoading = true;
  bool isChecked = false;
  TextEditingController teamName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController projectTopic = TextEditingController();
  TextEditingController groupSize = TextEditingController();
  TextEditingController selectedValueController = TextEditingController();
  
  
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context) ? desktopAppBar() : null,
        backgroundColor: const Color(0xFF150E28),
        body: Responsive.isDesktop(context)
            ? _desktopBody()
            : SingleChildScrollView(
                child: _mobileBody(),
              ));
  }

  SingleChildScrollView _desktopBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 0, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/sata gra.png'),
                Image.asset('assets/images/star2.png'),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/designer (1).png',
                  width: 450,
                  height: 450,
                ),

                // This container
                Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9).withOpacity(0.05),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Register',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 26,
                                color: Color(0xFFD434FE))),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Be part of this movement!',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                    color: Colors.white, fontSize: 14)),
                            const SizedBox(
                              width: 3,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/girlWalk.png'),
                                    Image.asset('assets/images/manWalk.png')
                                  ],
                                ),
                                Image.asset('assets/images/line.png'),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'CREATE YOUR ACCOUNT',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Team\'s Name',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    controller: teamName,
                                    decoration: const InputDecoration(
                                      labelText: 'Enter the name of your group',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    controller: phoneNumber,
                                    decoration: const InputDecoration(
                                      labelText: 'Enter your phone number',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    controller: email,
                                    decoration: const InputDecoration(
                                      labelText: 'Enter your email address',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Project Topic',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    controller: projectTopic,
                                    decoration: const InputDecoration(
                                      labelText: 'What is your project topic',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Category',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Builder(builder: (context) {
                                  if (isLoading) {
                                    return const CircularProgressIndicator();
                                  } else {
                                    return SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      child: DropdownButtonFormField<int>(
                                        dropdownColor: const Color(0xFF150E28),
                                        value: selectedValue,
                                        hint:
                                            const Text('Select your category'),
                                        style: const TextStyle(
                                            color: Colors.white),
                                        items: items.map((item) {
                                          return DropdownMenuItem<int>(
                                            value: item['id'],
                                            child: Text(item['name']),
                                          );
                                        }).toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                            selectedValueController.text =
                                                newValue.toString();
                                          });
                                        },
                                      ),
                                    );
                                  }
                                }),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Group Size',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    controller: groupSize,
                                    decoration: const InputDecoration(
                                      labelText: 'Enter your group size',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Please review your registration details before submitting',
                          style: GoogleFonts.montserrat(
                              color: const Color(0xFFFF26B9),
                              fontSize: 14,
                              fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              'I agreed with the event terms and conditions and privacy policy',
                              style: CustomFont.customFontWhite(12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextButton(
                          onPressed: () {
                            if (isChecked) {
                              postData();
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Agreement Not Accepted'),
                                    content: const Text(
                                        'Please accept the agreement to continue.'),
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
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
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
                                'Register Now',
                                style: (CustomFont.customFontWhite(16.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _mobileBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Register',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 16,
                    color: Color(0xFFD434FE))),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/designer (1).png',
                  width: 250,
                  height: 250,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Be part of this movement!',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 14)),
                const SizedBox(
                  width: 3,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/girlWalk.png'),
                        Image.asset('assets/images/manWalk.png')
                      ],
                    ),
                    Image.asset('assets/images/line.png'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'CREATE YOUR ACCOUNT',
              style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Team\'s name',
              style: CustomFont.customFontWhite(14),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: teamName,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Team\'s Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Phone',
              style: CustomFont.customFontWhite(14),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: phoneNumber,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Enter your phone number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Email',
              style: CustomFont.customFontWhite(14),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: email,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Enter your email address',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Project Topic',
              style: CustomFont.customFontWhite(14),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: projectTopic,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'What is your group project topic',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: CustomFont.customFontWhite(14),
                    ),
                    const SizedBox(height: 5),
                    Builder(builder: (context) {
                      if (isLoading) {
                        return const CircularProgressIndicator();
                      } else {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: DropdownButtonFormField<int>(
                            dropdownColor: const Color(0xFF150E28),
                            value: selectedValue,
                            hint: const Text('Select your category'),
                            style: const TextStyle(color: Colors.white),
                            items: items.map((item) {
                              return DropdownMenuItem<int>(
                                value: item['id'],
                                child: Text(item['name']),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                selectedValue = newValue!;
                                selectedValueController.text =
                                    newValue.toString();
                              });
                            },
                          ),
                        );
                      }
                    }),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Group Size',
                      style: CustomFont.customFontWhite(14),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextField(
                        controller: groupSize,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Group size',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Please review your registration details before submitting',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: GoogleFonts.montserrat(
                  color: const Color(0xFFFF26B9),
                  fontSize: 14,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'I agreed with the event terms\nand conditions and privacy policy',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: CustomFont.customFontWhite(12),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () {
                if (isChecked) {
                  postData();
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Agreement Not Accepted'),
                        content: const Text(
                            'Please accept the agreement to continue.'),
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
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
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
                    'Register Now',
                    style: (CustomFont.customFontWhite(16.0)),
                  ),
                ),
              ),
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
          const SizedBox(
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
                  const SizedBox(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'Overview',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                    }
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'FAQs',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                    }
                  ),
                  const SizedBox(
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
          const SizedBox(
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


Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('${Config.baseUrl}/hackathon/categories-list'));
    if (response.statusCode == 200) {
      setState(() {
        items = List<Map<String, dynamic>>.from(json.decode(response.body));
        isLoading = false;
      });
    }
  }

  Future<void> postData() async {
    final url = Uri.parse('${Config.baseUrl}/hackathon/registration');

    final Map<String, dynamic> data = {
      "email": email.text,
      "phone_number": phoneNumber.text,
      "project_topic": projectTopic.text,
      "category": int.tryParse(selectedValueController.text) ?? 0,
      "team_name": teamName.text,
      "group_size": int.tryParse(groupSize.text) ?? 0,
      "privacy_poclicy_accepted": true,
    };

    final headers = {'Content-Type': 'application/json'};

    try {
      final response =
          await http.post(url, headers: headers, body: jsonEncode(data));

      if (response.statusCode == 201) {
        final responseData = json.decode(response.body);
        // Process responseData as needed
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Registration Successful'),
              content: Text(
                  'Your registration was successful with ID ${responseData['id']}'),
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
        // Handle API error response
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Registration Failed '),
              content: Text(
                  'Please fill the form correctly or try a new email ${response.body}'),
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
            title: const Text('Registration Failed'),
            content: Text('Error: $e'),
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


