import 'package:builder_models/builder_models_with_flutter_internals.dart'
    as builder;
import 'package:flutter/material.dart';

/// Converts the internal ColorScheme from the builder models to material
///  ColorScheme
class ColorSchemeFactory {
  /// Converts the internal ColorScheme from the builder models to material
  ///  ColorScheme
  static ColorScheme fromBuilderModels(
    builder.ColorScheme colorScheme,
  ) {
    return ColorScheme(
      primary: Color(colorScheme.primary.value),
      background: Color(colorScheme.background.value),
      brightness: Brightness.values[colorScheme.brightness.index],
      error: Color(colorScheme.error.value),
      onBackground: Color(colorScheme.onBackground.value),
      onError: Color(colorScheme.onError.value),
      onPrimary: Color(colorScheme.onPrimary.value),
      onSecondary: Color(colorScheme.onSecondary.value),
      onSurface: Color(colorScheme.onSurface.value),
      secondary: Color(colorScheme.secondary.value),
      surface: Color(colorScheme.surface.value),
      errorContainer: colorScheme.errorContainer?.value == null
          ? null
          : Color(colorScheme.errorContainer!.value),
      inversePrimary: colorScheme.inversePrimary?.value == null
          ? null
          : Color(colorScheme.inversePrimary!.value),
      inverseSurface: colorScheme.inverseSurface?.value == null
          ? null
          : Color(colorScheme.inverseSurface!.value),
      onErrorContainer: colorScheme.onErrorContainer?.value == null
          ? null
          : Color(colorScheme.onErrorContainer!.value),
      onInverseSurface: colorScheme.onInverseSurface?.value == null
          ? null
          : Color(colorScheme.onInverseSurface!.value),
      onPrimaryContainer: colorScheme.onPrimaryContainer?.value == null
          ? null
          : Color(colorScheme.onPrimaryContainer!.value),
      onSecondaryContainer: colorScheme.onSecondaryContainer?.value == null
          ? null
          : Color(colorScheme.onSecondaryContainer!.value),
      onSurfaceVariant: colorScheme.onSurfaceVariant?.value == null
          ? null
          : Color(colorScheme.onSurfaceVariant!.value),
      onTertiary: colorScheme.onTertiary?.value == null
          ? null
          : Color(colorScheme.onTertiary!.value),
      onTertiaryContainer: colorScheme.onTertiaryContainer?.value == null
          ? null
          : Color(colorScheme.onTertiaryContainer!.value),
      outline: colorScheme.outline?.value == null
          ? null
          : Color(colorScheme.outline!.value),
      outlineVariant: colorScheme.outlineVariant?.value == null
          ? null
          : Color(colorScheme.outlineVariant!.value),
      primaryContainer: colorScheme.primaryContainer?.value == null
          ? null
          : Color(colorScheme.primaryContainer!.value),
      scrim: colorScheme.scrim?.value == null
          ? null
          : Color(colorScheme.scrim!.value),
      secondaryContainer: colorScheme.secondaryContainer?.value == null
          ? null
          : Color(colorScheme.secondaryContainer!.value),
      shadow: colorScheme.shadow?.value == null
          ? null
          : Color(colorScheme.shadow!.value),
      surfaceTint: colorScheme.surfaceTint?.value == null
          ? null
          : Color(colorScheme.surfaceTint!.value),
      surfaceVariant: colorScheme.surfaceVariant?.value == null
          ? null
          : Color(colorScheme.surfaceVariant!.value),
      tertiary: colorScheme.tertiary?.value == null
          ? null
          : Color(colorScheme.tertiary!.value),
      tertiaryContainer: colorScheme.tertiaryContainer?.value == null
          ? null
          : Color(colorScheme.tertiaryContainer!.value),
    );
  }

  /// Converts a material color scheme to the builder color scheme
  static builder.ColorScheme toBuilderModel(ColorScheme colorScheme) {
    return builder.ColorScheme(
      brightness: builder.Brightness.values[colorScheme.brightness.index],
      error: builder.Color(colorScheme.error.value),
      background: builder.Color(colorScheme.background.value),
      onBackground: builder.Color(colorScheme.onBackground.value),
      onError: builder.Color(colorScheme.onError.value),
      onPrimary: builder.Color(colorScheme.onPrimary.value),
      onSecondary: builder.Color(colorScheme.onSecondary.value),
      onSurface: builder.Color(colorScheme.onSurface.value),
      primary: builder.Color(colorScheme.primary.value),
      secondary: builder.Color(colorScheme.secondary.value),
      surface: builder.Color(colorScheme.surface.value),
      errorContainer: builder.Color(colorScheme.errorContainer.value),
      inversePrimary: builder.Color(colorScheme.inversePrimary.value),
      inverseSurface: builder.Color(colorScheme.inverseSurface.value),
      onErrorContainer: builder.Color(colorScheme.onErrorContainer.value),
      onInverseSurface: builder.Color(colorScheme.onInverseSurface.value),
      onPrimaryContainer: builder.Color(colorScheme.onPrimaryContainer.value),
      onSecondaryContainer:
          builder.Color(colorScheme.onSecondaryContainer.value),
      onSurfaceVariant: builder.Color(colorScheme.onSurfaceVariant.value),
      onTertiary: builder.Color(colorScheme.onTertiary.value),
      onTertiaryContainer: builder.Color(colorScheme.onTertiaryContainer.value),
      outline: builder.Color(colorScheme.outline.value),
      outlineVariant: builder.Color(colorScheme.outlineVariant.value),
      primaryContainer: builder.Color(colorScheme.primaryContainer.value),
      scrim: builder.Color(colorScheme.scrim.value),
      secondaryContainer: builder.Color(colorScheme.secondaryContainer.value),
      shadow: builder.Color(colorScheme.shadow.value),
      surfaceTint: builder.Color(colorScheme.surfaceTint.value),
      surfaceVariant: builder.Color(colorScheme.surfaceVariant.value),
      tertiary: builder.Color(colorScheme.tertiary.value),
      tertiaryContainer: builder.Color(colorScheme.tertiaryContainer.value),
    );
  }

  /// Returns a material color scheme from the builder color scheme's json
  static ColorScheme fromJson(Map<String, dynamic> json) {
    final builderColorScheme = builder.ColorScheme.fromJson(json);
    return fromBuilderModels(builderColorScheme);
  }
}
