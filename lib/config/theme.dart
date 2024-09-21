import 'package:flutter/material.dart';

class MaterialTheme {
  MaterialTheme();

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904b3d),
      surfaceTint: Color(0xff904b3d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad3),
      onPrimaryContainer: Color(0xff3a0a03),
      secondary: Color(0xff775750),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad3),
      onSecondaryContainer: Color(0xff2c1511),
      tertiary: Color(0xff6e5c2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff9e0a6),
      onTertiaryContainer: Color(0xff241a00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231918),
      onSurfaceVariant: Color(0xff534340),
      outline: Color(0xff85736f),
      outlineVariant: Color(0xffd8c2bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4a5),
      primaryFixed: Color(0xffffdad3),
      onPrimaryFixed: Color(0xff3a0a03),
      primaryFixedDim: Color(0xffffb4a5),
      onPrimaryFixedVariant: Color(0xff733428),
      secondaryFixed: Color(0xffffdad3),
      onSecondaryFixed: Color(0xff2c1511),
      secondaryFixedDim: Color(0xffe7bdb5),
      onSecondaryFixedVariant: Color(0xff5d3f39),
      tertiaryFixed: Color(0xfff9e0a6),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffdcc48c),
      onTertiaryFixedVariant: Color(0xff554519),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae6),
      surfaceContainerHigh: Color(0xfff7e4e1),
      surfaceContainerHighest: Color(0xfff1dfdb),
    );
  }

  /// Create a [ThemeData] given a [ColorScheme].
  ///
  /// Creates a [ThemeData] with the given [ColorScheme], and with the
  /// [Brightness] of the [ColorScheme].
  ///
  /// The [Brightness] of the [ColorScheme] is used to determine the overall
  /// brightness of the theme.
  ///
  /// The [ColorScheme] is used to determine the colors of the theme.
  ///
  /// [ColorScheme.surface] color.
  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  ThemeData light() => theme(lightScheme());
}
