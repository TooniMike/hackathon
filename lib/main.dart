import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/widgets/responsive.dart';
import 'screens/screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Responsive.isMobile(context) ?  const Size(360.0, 712.0) : const Size(1366.0, 651.0) ,
      minTextAdapt: true,
        splitScreenMode: true,
      child: MaterialApp(
        
        color: const Color(0xFF150E28),
        debugShowCheckedModeBanner: false,
        title: 'GetLinked Hackathon 1.0',
        theme: ThemeData(
          primaryColor: const Color(0xFF150E28),
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF150E28)),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

