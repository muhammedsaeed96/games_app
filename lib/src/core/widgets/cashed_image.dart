import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:games_app/src/core/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class CashedImage extends StatelessWidget {
  const CashedImage({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.iconSize = 20.0,
    this.width,
    this.height,
  }) : super(key: key);

  final String imageUrl;
  final double iconSize;
  final BoxFit fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: kTextColor3,
        highlightColor: Colors.white,
        child: Container(
          color: kTextColor3,
        ),
      ),
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        size: iconSize,
        color: Colors.black54,
      ),
    );
  }
}
