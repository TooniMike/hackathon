import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/screens/register_screen.dart';
import 'package:hackathon/widgets/custom_font.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterScreen()));
      },
      child: Container(
        height: 50.sp,
        width: 180.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF903AFF), Color(0xFFFE34B9)],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: (CustomFont.customFontWhite(16.0)),
          ),
        ),
      ),
    );
  }
}
