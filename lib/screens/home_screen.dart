import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/pages/mobile/mobile.dart';
import 'package:hackathon/screens/contact_screen.dart';
import '../pages/desktop/desktop.dart';
import '../widgets/custom_font.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  final Size preferredSize = const Size.fromHeight(100);
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOverlayVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) ? desktopAppBar() : mobileAppBar(),
      backgroundColor: const Color(0xFF150E28),
      body: Responsive.isDesktop(context)
          ?
          const DesktopBody()
          : Stack(
              children: [
                const MobileBody(),
                if (isOverlayVisible)
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF150E28),
                        borderRadius: BorderRadius.circular(5)),
                    height: MediaQuery.of(context).size.height ,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              MobileBody._scrollController.animateTo(
                                4192.3.sp,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Text(
                              'Timeline',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              MobileBody._scrollController.animateTo(
                                2254.3.sp,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Text(
                              'Overview',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              MobileBody._scrollController.animateTo(
                                3348.9.sp,
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Text(
                              'FAQs',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ContactPage()));
                            },
                            child: Text(
                              'Contact',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Button(text: 'Register')
                        ],
                      ),
                    ),
                  ),
              ],
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  _AppBarButton(
                    title: 'Timeline',
                    onTap: () {
                      DesktopBody._scrollController.animateTo(
                        3400.3.sp,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'Overview',
                    onTap: () {
                      DesktopBody._scrollController.animateTo(
                        1333.5.sp,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'FAQs',
                    onTap: () {
                      DesktopBody._scrollController.animateTo(
                        2800.2.sp,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  _AppBarButton(
                    title: 'Contact',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactPage(),
                        ),
                      );
                    },
                  ),
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

  // Mobile AppBar
  AppBar mobileAppBar() {
    return AppBar(
      toolbarHeight: widget.preferredSize.height,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          const Spacer(),
          isOverlayVisible
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isOverlayVisible = false;
                    });
                  },
                  icon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [Color(0xFF903AFF), Color(0xFFFF26B9)],
                        stops: [0.0, 1.0],
                      ).createShader(bounds);
                    },
                    child: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                    ),
                  ),
                )
              : IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      isOverlayVisible = true;
                    });
                  },
                ),
        ],
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

class DesktopBody extends StatelessWidget {
  static final ScrollController _scrollController = ScrollController();

  const DesktopBody({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: 10,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const FirstPage();
          case 1:
            return const SecondPage();
          case 2:
            return const ThirdPage();
          case 3:
            return const ForthPage();
          case 4:
            return const FifthPage();
          case 5:
            return const SixthPage();
          case 6:
            return const SeventhPage();
          case 7:
            return const EighthPage();
          case 8:
            return const NinthPage();
          case 9:
            return const TenthPage();
          default:
            return Container();
        }
      },
    );
  }
}

class MobileBody extends StatelessWidget {
  static final ScrollController _scrollController = ScrollController();

  const MobileBody({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: 10,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const FirstScreen();
          case 1:
            return const SecondScreen();
          case 2:
            return const ThirdScreen();
          case 3:
            return const ForthScreen();
          case 4:
            return const FifthScreen();
          case 5:
            return const SixthScreen();
          case 6:
            return const SeventhScreen();
          case 7:
            return const EightScreen();
          case 8:
            return const NinthScreen();
          case 9:
            return const TenthScreen();
          default:
            return Container();
        }
      },
    );
  }
}
