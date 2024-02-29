import 'package:builder_flutter_factories/src/font_style_factory.dart';
import 'package:builder_models/builder_models_with_flutter_internals.dart'
    as builder;
import 'package:flutter/material.dart';

/// A factory for creating [TextStyle] instances from [builder.TextStyle]
class TextStyleFactory {
  /// Creates a new [TextStyle] from a [builder.TextStyle].
  static TextStyle fromBuilderModels(builder.TextStyle style) {
    return TextStyle(
      color: style.color != null ? Color(style.color!.value) : null,
      fontSize: style.fontSize,
      fontWeight: style.fontWeight != null
          ? FontWeight.values[style.fontWeight!.index]
          : null,
      fontStyle: style.fontStyle != null
          ? FontStyleFactory.fromBuilderModels(style.fontStyle!)
          : null,
      letterSpacing: style.letterSpacing,
      wordSpacing: style.wordSpacing,
      height: style.height,
      decorationColor: style.decorationColor != null
          ? Color(style.decorationColor!.value)
          : null,
      debugLabel: style.debugLabel,
      fontFamily: style.fontFamily,
      package: style.package,
    );
  }

  /// Creates a new [builder.TextStyle] from a [TextStyle].
  static builder.TextStyle toBuilderModels(TextStyle style) {
    return builder.TextStyle(
      color: style.color != null ? builder.Color(style.color!.value) : null,
      fontSize: style.fontSize,
      fontWeight: style.fontWeight != null
          ? builder.FontWeight.values[style.fontWeight!.index]
          : null,
      fontStyle: style.fontStyle != null
          ? FontStyleFactory.toBuilderModels(style.fontStyle!)
          : null,
      letterSpacing: style.letterSpacing,
      wordSpacing: style.wordSpacing,
      height: style.height,
      decorationColor: style.decorationColor != null
          ? builder.Color(style.decorationColor!.value)
          : null,
      debugLabel: style.debugLabel,
      fontFamily: style.fontFamily,
    );
  }
}
