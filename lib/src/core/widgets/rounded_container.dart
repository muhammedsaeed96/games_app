import 'package:flutter/material.dart';

import '../utils/constants.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: kPrimaryColor,
      ),
      child: child,
    );
  }
}
