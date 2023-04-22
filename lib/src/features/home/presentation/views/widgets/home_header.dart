import 'package:flutter/material.dart';
import '../../../../../core/config/themes/app_theme.dart';
import '../../../../../core/utils/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      padding: const EdgeInsets.only(top: 30, right: 24, left: 24),
      color: kTextColor1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: headTextStyle.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'what would you like to play?',
                      style: normalTextStyle.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'https://cdn2.myminifactory.com/assets/object-assets/5f435a90d22ba/images/720X720-viper-avatar.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                )
              ]),
          const SizedBox(height: 30),
          TextField(
            decoration: AppTheme.inputDecoration,
          ),
        ],
      ),
    );
  }
}
