import 'package:builder_models/builder_models_with_flutter_internals.dart'
    as builder;
import 'package:flutter/material.dart';

/// A factory for creating [Color] instances from [builder.Color] instances and
class ColorFactory {
  /// Creates a new [Color] from a [builder.Color].
  static Color fromBuilderModels(builder.Color color) {
    return Color(color.value);
  }

  /// Creates a new [builder.Color] from a [Color].
  static builder.Color toBuilderModels(Color color) {
    return builder.Color(color.value);
  }
}
