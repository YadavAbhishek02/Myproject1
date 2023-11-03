import 'package:flutter/material.dart';
import 'package:my_responsive_ui/colors.dart';
import 'package:my_responsive_ui/responsive/responsive_layout.dart';
import 'package:my_responsive_ui/screens/mobile_screen_layout.dart';
import 'package:my_responsive_ui/screens/web_screen_layout.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Whatsapp Ui',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor),
      home: const  ResponsiveLayout(mobileScreenLayout:MobileScreenLayout(), webScreenLayout:WebScreenLayout()),
    );
  }
}




