import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class SocialMediaCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const SocialMediaCard({
    Key? key,
    required this.imagePath,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // إضافة المساحة من الجوانب اليمنى واليسرى
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 100,  // التحكم في ارتفاع الكارد بما يتناسب مع الصورة
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.darkGray,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), // لجعل الصورة تأخذ نفس حواف الكارد
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover, // لجعل الصورة تغطي الكارد بالكامل
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class SocialMediaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SocialMediaCard(
              imagePath: AppAssets.whatsApp,
              label: 'WHATSAPP',
            ),
            SocialMediaCard(
              imagePath: AppAssets.telegram,
              label: 'TELEGRAM',
            ),
            SocialMediaCard(
              imagePath: AppAssets.instagram,
              label: 'INSTAGRAM',
            ),
          ],
        ),
      ),
    );
  }
}
