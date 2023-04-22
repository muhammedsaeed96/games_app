import 'package:flutter/material.dart';

import '../config/size_config.dart';

const kPrimaryColor = Color(0xFFF6F7FF);
const kTextColor1 = Color(0xFF5F67EA);
const kTextColor2 = Color(0xFF6E76EE);
const kTextColor3 = Color(0xFFB9BDCE);
const kTextColor4 = Color(0xFFFFC106);
const kTextColor5 = Color(0xFFB27090);
const kTextColor6 = Color(0xFF94a3b8);
const kTextColor7 = Color(0xFF34d399);

final headTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w700,
  color: Colors.black87,
  height: 1.5,
);

final subHeadTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.w700,
  color: Colors.black87,
);

final normalTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(13),
  color: kTextColor3,
);

final body1Style = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.bold,
  color: Colors.black87,
  height: 1.5,
);

final body2Style = TextStyle(
  fontSize: getProportionateScreenWidth(12),
  fontWeight: FontWeight.bold,
  color: Colors.black87,
  height: 1.5,
);
