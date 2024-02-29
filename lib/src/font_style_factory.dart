import 'package:builder_models/builder_models_with_flutter_internals.dart'
    as builder;
import 'package:flutter/material.dart';

/// A factory for creating [FontStyle] instances from [builder.FontStyle]
class FontStyleFactory {
  /// Creates a new [FontStyle] from a [builder.FontStyle].
  static FontStyle fromBuilderModels(
    builder.FontStyle fontStyle,
  ) {
    switch (fontStyle) {
      case builder.FontStyle.normal:
        return FontStyle.normal;
      case builder.FontStyle.italic:
        return FontStyle.italic;
    }
  }

  /// Creates a new [builder.FontStyle] from a [FontStyle].
  static builder.FontStyle toBuilderModels(
    FontStyle fontStyle,
  ) {
    if (fontStyle == FontStyle.normal) {
      return builder.FontStyle.normal;
    } else {
      return builder.FontStyle.italic;
    }
  }
}
