import 'package:flutter/material.dart';
import 'package:hackathon/widgets/button.dart';
import 'custom_font.dart';
import 'widgets.dart';

class CustomAppBar extends StatelessWidget {
  // final double scrollOffset;
  const CustomAppBar({
    super.key,
    // required this.scrollOffset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0,
      ),
      color: const Color(0xFF150E28),
      child: const Responsive(
          mobile: _CustomAppBarMobile(), desktop: _CustomAppBarDesktop()),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/logo.png',
            // height: 50,
            // width: 40,
          )),
          // const SizedBox(width: 12.0),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: double.infinity,
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    title: 'Timeline',
                    onTap: () => debugPrint('Timeline'),
                  ),
                  _AppBarButton(
                    title: 'Overview',
                    onTap: () => debugPrint('Overview'),
                  ),
                  _AppBarButton(
                    title: 'FAQs',
                    onTap: () => debugPrint('FAQs'),
                  ),
                  _AppBarButton(
                    title: 'Contact',
                    onTap: () => debugPrint('Contact'),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Button(text: 'Register'),
          )
        ],
      ),
    );
  }
}


class _CustomAppBarMobile extends StatefulWidget {
  const _CustomAppBarMobile({super.key});

  @override
  _CustomAppBarMobileState createState() => _CustomAppBarMobileState();
}

class _CustomAppBarMobileState extends State<_CustomAppBarMobile> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Image.asset('assets/images/logo.png'),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isMenuOpen = !_isMenuOpen; // Toggle the menu
                    });
                  },
                  child: _isMenuOpen
                      ? const Icon(Icons.cancel, color: Colors.white) // Cancel icon when open
                      : const Icon(Icons.menu, color: Colors.white), // Menu icon when closed
                ),
              ],
            ),
          ),
          if (_isMenuOpen)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 10, right: 10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuItem(title: 'Timeline'),
                    MenuItem(title: 'Overview'),
                    MenuItem(title: 'FAQs'),
                    MenuItem(title: 'Contact'),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  const MenuItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the menu item selection here
        print('Selected: $title');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}




class _AppBarButton extends StatelessWidget {
  // const _AppBarButton({super.key});
  final String title;
  final Function()? onTap;

  const _AppBarButton({super.key, required this.title, required this.onTap});

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
