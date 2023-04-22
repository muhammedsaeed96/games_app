import 'package:flutter/material.dart';
import 'package:games_app/src/core/config/size_config.dart';
import 'package:games_app/src/core/utils/constants.dart';
import 'package:games_app/src/core/widgets/cashed_image.dart';

class GameDetailsHeader extends StatelessWidget {
  const GameDetailsHeader({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(350.0),
      child: Stack(
        children: [
          CashedImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            iconSize: 32,
          ),
          Positioned(
            top: 45,
            left: 15,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kTextColor3.withOpacity(0.6),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
