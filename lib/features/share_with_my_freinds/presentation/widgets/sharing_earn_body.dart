import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SharingEarnBody extends StatelessWidget {
  const SharingEarnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.1,
            child: SvgPicture.asset(
              Assets.bgOfSharingWithMyFriends,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xffABABAB),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'كود الإحالة',
                      style: AppStyles.style20W400ShareWithFiends,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      initialValue: '152510238jcsuxb',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.mixWhiteAndGray,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        suffixIcon: const Icon(Icons.copy),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'شارك التطبيق على 10 اشخاص اربح 15 الماسة',
                          style: AppStyles.style20W400ShareWithFiends,
                        ),
                      ],
                    ),
                    const SizedBox(height: 220),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              Assets.imageSea,
                              width: double.infinity,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}