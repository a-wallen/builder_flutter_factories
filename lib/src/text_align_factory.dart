import 'package:builder_models/builder_models_with_flutter_internals.dart'
    as builder;
import 'package:flutter/material.dart';

/// Converts material text aligns to builder text aligns
class TextAlignFactory {
  /// Converts a material text align to the builder text align
  static TextAlign fromBuilderModels(builder.TextAlign textAlign) {
    switch (textAlign) {
      case builder.TextAlign.left:
        return TextAlign.left;
      case builder.TextAlign.right:
        return TextAlign.right;
      case builder.TextAlign.center:
        return TextAlign.center;
      case builder.TextAlign.justify:
        return TextAlign.justify;
      case builder.TextAlign.start:
        return TextAlign.start;
      case builder.TextAlign.end:
        return TextAlign.end;
    }
  }

  /// Converts a builder text align to the material text align
  static builder.TextAlign toBuilderModels(TextAlign textAlign) {
    switch (textAlign) {
      case TextAlign.left:
        return builder.TextAlign.left;
      case TextAlign.right:
        return builder.TextAlign.right;
      case TextAlign.center:
        return builder.TextAlign.center;
      case TextAlign.justify:
        return builder.TextAlign.justify;
      case TextAlign.start:
        return builder.TextAlign.start;
      case TextAlign.end:
        return builder.TextAlign.end;
    }
  }
}
