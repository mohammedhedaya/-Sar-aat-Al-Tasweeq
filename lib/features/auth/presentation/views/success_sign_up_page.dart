import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            Assets.imagesSuccesscircle1,
          ),
          Positioned(
            top: 0,
            left: 40,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle2,
            ),
          ),
          Positioned(
            top: 0,
            right: 50,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle3,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle4,
            ),
          ),
          Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    const Center(
                      child: Icon(
                        Icons.check_circle_outline_sharp,
                        color: AppColors.whiteColor,
                        size: 140,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      "تم تسجيل حسابك بنجاح",
                      style: AppStyles.style25W800,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                              minHeight: 64,
                              minWidth: 64,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColors.circleGray,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back_outlined,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                        Text(
                          "أبدأ التسويق",
                          style: AppStyles.style32W700,
                        ),
                      ],
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
