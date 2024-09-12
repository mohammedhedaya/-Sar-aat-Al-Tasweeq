import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';

class SuccessSignUpView extends StatelessWidget {
  const SuccessSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle4,
            ),
          ),
          Positioned(
            top: 0,
            left: 50,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle2,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 0,
            right: 50,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle3,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle1,
              fit: BoxFit.fill,
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
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "أبدأ التسويق",
                          style: AppStyles.style32W700,
                        ),
                        InkWell(
                          onTap: () {
                            context.go('/navBarView');
                          },
                          child: Container(
                            constraints: const BoxConstraints(
                              minHeight: 64,
                              minWidth: 64,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColors.loginBtn,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor,
                            ),
                          ),
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
