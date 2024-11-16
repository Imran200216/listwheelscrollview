import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listwheelscrollview/components/custom_image_card.dart';
import 'package:listwheelscrollview/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// image data
    final List<Map<String, String>> imageDataList = [
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'title': 'Las Angles',
        'subtitle': 'winter 2024 - 19 days',
        'iconAssetPath': 'assets/images/svg/winter-icon.svg',
        'profileImageUrl':
            'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
      {
        'imageUrl':
            "https://images.unsplash.com/photo-1708577971175-5d5088e9db3f?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        'title': 'New York',
        'subtitle': 'spring 2024 - 10 days',
        'iconAssetPath': 'assets/images/svg/winter-icon.svg',
        'profileImageUrl':
            'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
      {
        'imageUrl':
            "https://images.unsplash.com/photo-1480497490787-505ec076689f?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        'title': 'Canada',
        'subtitle': 'spring 2024 - 10 days',
        'iconAssetPath': 'assets/images/svg/winter-icon.svg',
        'profileImageUrl':
            'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
      {
        'imageUrl':
            "https://images.unsplash.com/photo-1460891053196-b9d4d9483d9b?q=80&w=2099&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        'title': 'Swiss',
        'subtitle': 'spring 2024 - 10 days',
        'iconAssetPath': 'assets/images/svg/winter-icon.svg',
        'profileImageUrl':
            'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
      {
        'imageUrl':
            "https://images.unsplash.com/photo-1515095834026-2284fea9b76f?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        'title': 'Laos',
        'subtitle': 'spring 2024 - 10 days',
        'iconAssetPath': 'assets/images/svg/winter-icon.svg',
        'profileImageUrl':
            'https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      },
    ];

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
      body: Container(
        margin: const EdgeInsets.all(20),
        child: ListWheelScrollView(
          itemExtent: 260,
          // Height of each item (adjust as needed)
          diameterRatio: 2.0,
          // Controls curvature of the wheel
          perspective: 0.003,
          // Depth effect
          physics: const FixedExtentScrollPhysics(),
          // Snaps to the nearest item
          children: imageDataList.map((data) {
            return CustomImageCard(
              imageUrl: data['imageUrl']!,
              iconAssetPath: data['iconAssetPath']!,
              title: data['title']!,
              subtitle: data['subtitle']!,
              profileImageUrl: data['profileImageUrl']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}
