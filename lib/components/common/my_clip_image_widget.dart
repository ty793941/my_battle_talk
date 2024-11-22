import 'package:flutter/material.dart';
import 'package:my_battle_talk/utils/common_utils.dart';

class MyClipImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? radius;
  final String? heroTag;
  final Function()? onTap;
  const MyClipImageWidget(
      {super.key,
      required this.imageUrl,
      this.width,
      this.height,
      this.radius,
      this.onTap,
      this.heroTag});

  @override
  Widget build(BuildContext context) {
    var u = CommonUtils.uniqueString();
    return GestureDetector(
        onTap: onTap,
        child: heroTag == null
            ? _getMainWidget()
            : Hero(tag: heroTag ?? u, child: _getMainWidget()));
  }

  Widget _getMainWidget() {
    return SizedBox(
        width: width ?? 120,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 10.0), // 设置圆角半径
          // child: Image(fit: BoxFit.cover, image: _getImageProvider(imageUrl)),
          child: _getImage(imageUrl),
        ));
  }

  Widget _getImage(String imageUrl) {
    return Image(fit: BoxFit.cover, image: AssetImage(imageUrl));
  }
}
