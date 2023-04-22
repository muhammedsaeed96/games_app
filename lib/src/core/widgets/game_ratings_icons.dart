import 'package:flutter/material.dart';

import '../utils/constants.dart';

class GameRatingsIcons extends StatelessWidget {
  GameRatingsIcons({super.key, required this.rating, this.iconSize});

  final double rating;
  double? iconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(children: getIcons());
  }

  List<Icon> getIcons() {
    List<Icon> list = [];
    for (var i = 1; i <= 5; i++) {
      list.add(Icon(
        Icons.star,
        color: i <= rating ? kTextColor4 : kTextColor3,
        size: iconSize,
      ));
    }
    return list;
  }
}
