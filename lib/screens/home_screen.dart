import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listwheelscrollview/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBgColor,
        title: const Text("Trips"),
        titleTextStyle: GoogleFonts.manrope(
          color: AppColors.appbarTitleColor,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.list,
              size: 28,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.web_outlined,
              size: 28,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
