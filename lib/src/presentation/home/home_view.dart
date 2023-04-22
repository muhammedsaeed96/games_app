import 'package:flutter/material.dart';
import '../../core/config/size_config.dart';
import '../../core/utils/constants.dart';
import 'widgets/home_body.dart';
import 'widgets/home_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kTextColor1,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: const [
            HomeHeader(),
            Positioned(
              top: 220,
              bottom: 0,
              left: 0,
              right: 0,
              child: HomeBody(),
            ),
          ],
        ),
      ),
    );
  }
}
