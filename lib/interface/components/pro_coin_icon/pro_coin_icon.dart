import 'package:flutter/material.dart';

class ProCoinIcon extends StatelessWidget {
  final AssetBundle? bundle;
  final Widget Function(BuildContext, Widget, int?, bool)? frameBuilder;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;
  final String? semanticLabel;
  final bool excludeFromSemantics = false;
  final double? scale;
  final double? width;
  final double? height;
  final Color? color;
  final Animation<double>? opacity;
  final BlendMode? colorBlendMode;
  final BoxFit? fit;
  final AlignmentGeometry alignment = Alignment.center;
  final ImageRepeat repeat = ImageRepeat.noRepeat;
  final Rect? centerSlice;
  final bool matchTextDirection = false;
  final bool gaplessPlayback = false;
  final bool isAntiAlias = false;
  final String? package;
  final FilterQuality filterQuality = FilterQuality.medium;
  final int? cacheWidth;
  final int? cacheHeight;

  const ProCoinIcon({
    super.key,
    this.bundle,
    this.frameBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.scale,
    this.width = 25,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.centerSlice,
    this.package,
    this.cacheWidth,
    this.cacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/procoin.png',
      width: width,
      alignment: alignment,
      bundle: bundle,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      centerSlice: centerSlice,
      color: color,
      colorBlendMode: colorBlendMode,
      errorBuilder: errorBuilder,
      excludeFromSemantics: excludeFromSemantics,
      filterQuality: filterQuality,
      fit: fit,
      frameBuilder: frameBuilder,
      gaplessPlayback: gaplessPlayback,
      height: height,
      isAntiAlias: isAntiAlias,
      key: key,
      matchTextDirection: matchTextDirection,
      opacity: opacity,
      package: package,
      repeat: repeat,
      scale: scale,
      semanticLabel: semanticLabel,
    );
  }
}
