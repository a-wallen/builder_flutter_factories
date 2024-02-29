import 'package:builder_models/builder_models_with_flutter_internals.dart'
    as builder;
import 'package:flutter/material.dart';

/// A factory for creating [Alignment] instances from [builder.Alignment]
/// instances and vice versa.
class AlignmentFactory {
  /// Creates a new [Alignment] from a [builder.Alignment].
  static Alignment fromBuilderModels(builder.Alignment alignment) {
    return Alignment(alignment.x, alignment.y);
  }

  /// Creates a new [builder.Alignment] from a [Alignment].
  static builder.Alignment toBuilderModels(Alignment alignment) {
    return builder.Alignment(alignment.x, alignment.y);
  }
}
