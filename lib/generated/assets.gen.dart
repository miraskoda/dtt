/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/GothamSSm-Black.otf
  String get gothamSSmBlack => 'assets/fonts/GothamSSm-Black.otf';

  /// File path: assets/fonts/GothamSSm-BlackItalic.otf
  String get gothamSSmBlackItalic => 'assets/fonts/GothamSSm-BlackItalic.otf';

  /// File path: assets/fonts/GothamSSm-Bold.otf
  String get gothamSSmBold => 'assets/fonts/GothamSSm-Bold.otf';

  /// File path: assets/fonts/GothamSSm-BoldItalic.otf
  String get gothamSSmBoldItalic => 'assets/fonts/GothamSSm-BoldItalic.otf';

  /// File path: assets/fonts/GothamSSm-Book.otf
  String get gothamSSmBook => 'assets/fonts/GothamSSm-Book.otf';

  /// File path: assets/fonts/GothamSSm-BookItalic.otf
  String get gothamSSmBookItalic => 'assets/fonts/GothamSSm-BookItalic.otf';

  /// File path: assets/fonts/GothamSSm-Light.otf
  String get gothamSSmLight => 'assets/fonts/GothamSSm-Light.otf';

  /// File path: assets/fonts/GothamSSm-LightItalic.otf
  String get gothamSSmLightItalic => 'assets/fonts/GothamSSm-LightItalic.otf';

  /// File path: assets/fonts/GothamSSm-Medium.otf
  String get gothamSSmMedium => 'assets/fonts/GothamSSm-Medium.otf';

  /// File path: assets/fonts/GothamSSm-MediumItalic.otf
  String get gothamSSmMediumItalic => 'assets/fonts/GothamSSm-MediumItalic.otf';

  /// File path: assets/fonts/GothamSSm-XLight.otf
  String get gothamSSmXLight => 'assets/fonts/GothamSSm-XLight.otf';

  /// File path: assets/fonts/GothamSSm-XLightItalic.otf
  String get gothamSSmXLightItalic => 'assets/fonts/GothamSSm-XLightItalic.otf';

  /// List of all assets
  List<String> get values => [
        gothamSSmBlack,
        gothamSSmBlackItalic,
        gothamSSmBold,
        gothamSSmBoldItalic,
        gothamSSmBook,
        gothamSSmBookItalic,
        gothamSSmLight,
        gothamSSmLightItalic,
        gothamSSmMedium,
        gothamSSmMediumItalic,
        gothamSSmXLight,
        gothamSSmXLightItalic
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/icons/ic_back.svg');

  /// File path: assets/icons/ic_bath.svg
  SvgGenImage get icBath => const SvgGenImage('assets/icons/ic_bath.svg');

  /// File path: assets/icons/ic_bed.svg
  SvgGenImage get icBed => const SvgGenImage('assets/icons/ic_bed.svg');

  /// File path: assets/icons/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/icons/ic_close.svg');

  /// File path: assets/icons/ic_dtt.svg
  SvgGenImage get icDtt => const SvgGenImage('assets/icons/ic_dtt.svg');

  /// File path: assets/icons/ic_home.svg
  SvgGenImage get icHome => const SvgGenImage('assets/icons/ic_home.svg');

  /// File path: assets/icons/ic_info.svg
  SvgGenImage get icInfo => const SvgGenImage('assets/icons/ic_info.svg');

  /// File path: assets/icons/ic_layers.svg
  SvgGenImage get icLayers => const SvgGenImage('assets/icons/ic_layers.svg');

  /// File path: assets/icons/ic_location.svg
  SvgGenImage get icLocation =>
      const SvgGenImage('assets/icons/ic_location.svg');

  /// File path: assets/icons/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/icons/ic_search.svg');

  /// File path: assets/icons/ic_whatshot.svg
  SvgGenImage get icWhatshot =>
      const SvgGenImage('assets/icons/ic_whatshot.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icBack,
        icBath,
        icBed,
        icClose,
        icDtt,
        icHome,
        icInfo,
        icLayers,
        icLocation,
        icSearch,
        icWhatshot
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/dtt_banner.png
  AssetGenImage get dttBanner =>
      const AssetGenImage('assets/images/dtt_banner.png');

  /// File path: assets/images/launcher_icon.png
  AssetGenImage get launcherIcon =>
      const AssetGenImage('assets/images/launcher_icon.png');

  /// File path: assets/images/search_state_empty.png
  AssetGenImage get searchStateEmpty =>
      const AssetGenImage('assets/images/search_state_empty.png');

  /// List of all assets
  List<AssetGenImage> get values => [dttBanner, launcherIcon, searchStateEmpty];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
