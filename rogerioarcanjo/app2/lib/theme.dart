import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287580751),
      surfaceTint: Color(4287580751),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957786),
      onPrimaryContainer: Color(4282058768),
      secondary: Color(4279199361),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4290570751),
      onSecondaryContainer: Color(4278198057),
      tertiary: Color(4287254561),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958277),
      onTertiaryContainer: Color(4281340928),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965495),
      onSurface: Color(4280424730),
      onSurfaceVariant: Color(4283581251),
      outline: Color(4286935923),
      outlineVariant: Color(4292329922),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871918),
      inversePrimary: Color(4294947766),
      primaryFixed: Color(4294957786),
      onPrimaryFixed: Color(4282058768),
      primaryFixedDim: Color(4294947766),
      onPrimaryFixedVariant: Color(4285674296),
      secondaryFixed: Color(4290570751),
      onSecondaryFixed: Color(4278198057),
      secondaryFixedDim: Color(4287287534),
      onSecondaryFixedVariant: Color(4278209891),
      tertiaryFixed: Color(4294958277),
      onTertiaryFixed: Color(4281340928),
      tertiaryFixedDim: Color(4294948739),
      onTertiaryFixedVariant: Color(4285348107),
      surfaceDim: Color(4293383894),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963440),
      surfaceContainer: Color(4294765289),
      surfaceContainerHigh: Color(4294370532),
      surfaceContainerHighest: Color(4293975774),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285411124),
      surfaceTint: Color(4287580751),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289355620),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278208862),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281499032),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4285019399),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288964149),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965495),
      onSurface: Color(4280424730),
      onSurfaceVariant: Color(4283318080),
      outline: Color(4285291355),
      outlineVariant: Color(4287198839),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871918),
      inversePrimary: Color(4294947766),
      primaryFixed: Color(4289355620),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287383372),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281499032),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278740094),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288964149),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287057439),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293383894),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963440),
      surfaceContainer: Color(4294765289),
      surfaceContainerHigh: Color(4294370532),
      surfaceContainerHighest: Color(4293975774),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282650390),
      surfaceTint: Color(4287580751),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285411124),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278199858),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278208862),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281997568),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285019399),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965495),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281147681),
      outline: Color(4283318080),
      outlineVariant: Color(4283318080),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871918),
      inversePrimary: Color(4294960870),
      primaryFixed: Color(4285411124),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283570464),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278208862),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278202688),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285019399),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282982912),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293383894),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963440),
      surfaceContainer: Color(4294765289),
      surfaceContainerHigh: Color(4294370532),
      surfaceContainerHighest: Color(4293975774),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947766),
      surfaceTint: Color(4294947766),
      onPrimary: Color(4283833635),
      primaryContainer: Color(4285674296),
      onPrimaryContainer: Color(4294957786),
      secondary: Color(4287287534),
      onSecondary: Color(4278203717),
      secondaryContainer: Color(4278209891),
      onSecondaryContainer: Color(4290570751),
      tertiary: Color(4294948739),
      onTertiary: Color(4283376896),
      tertiaryContainer: Color(4285348107),
      onTertiaryContainer: Color(4294958277),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279898385),
      onSurface: Color(4293975774),
      onSurfaceVariant: Color(4292329922),
      outline: Color(4288646284),
      outlineVariant: Color(4283581251),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975774),
      inversePrimary: Color(4287580751),
      primaryFixed: Color(4294957786),
      onPrimaryFixed: Color(4282058768),
      primaryFixedDim: Color(4294947766),
      onPrimaryFixedVariant: Color(4285674296),
      secondaryFixed: Color(4290570751),
      onSecondaryFixed: Color(4278198057),
      secondaryFixedDim: Color(4287287534),
      onSecondaryFixedVariant: Color(4278209891),
      tertiaryFixed: Color(4294958277),
      onTertiaryFixed: Color(4281340928),
      tertiaryFixedDim: Color(4294948739),
      onTertiaryFixedVariant: Color(4285348107),
      surfaceDim: Color(4279898385),
      surfaceBright: Color(4282464055),
      surfaceContainerLowest: Color(4279503884),
      surfaceContainerLow: Color(4280424730),
      surfaceContainer: Color(4280753438),
      surfaceContainerHigh: Color(4281477160),
      surfaceContainerHighest: Color(4282200626),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949308),
      surfaceTint: Color(4294947766),
      onPrimary: Color(4281598731),
      primaryContainer: Color(4291459711),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4287550707),
      onSecondary: Color(4278196514),
      secondaryContainer: Color(4283603382),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294950286),
      onTertiary: Color(4280815616),
      tertiaryContainer: Color(4291133774),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898385),
      onSurface: Color(4294965753),
      onSurfaceVariant: Color(4292593350),
      outline: Color(4289896094),
      outlineVariant: Color(4287725439),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975774),
      inversePrimary: Color(4285805625),
      primaryFixed: Color(4294957786),
      onPrimaryFixed: Color(4281073670),
      primaryFixedDim: Color(4294947766),
      onPrimaryFixedVariant: Color(4284359464),
      secondaryFixed: Color(4290570751),
      onSecondaryFixed: Color(4278194971),
      secondaryFixedDim: Color(4287287534),
      onSecondaryFixedVariant: Color(4278205261),
      tertiaryFixed: Color(4294958277),
      onTertiaryFixed: Color(4280290048),
      tertiaryFixedDim: Color(4294948739),
      onTertiaryFixedVariant: Color(4283968000),
      surfaceDim: Color(4279898385),
      surfaceBright: Color(4282464055),
      surfaceContainerLowest: Color(4279503884),
      surfaceContainerLow: Color(4280424730),
      surfaceContainer: Color(4280753438),
      surfaceContainerHigh: Color(4281477160),
      surfaceContainerHighest: Color(4282200626),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947766),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949308),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294376447),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4287550707),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294950286),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898385),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292593350),
      outlineVariant: Color(4292593350),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975774),
      inversePrimary: Color(4283307805),
      primaryFixed: Color(4294959072),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949308),
      onPrimaryFixedVariant: Color(4281598731),
      secondaryFixed: Color(4291292671),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4287550707),
      onSecondaryFixedVariant: Color(4278196514),
      tertiaryFixed: Color(4294959566),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294950286),
      onTertiaryFixedVariant: Color(4280815616),
      surfaceDim: Color(4279898385),
      surfaceBright: Color(4282464055),
      surfaceContainerLowest: Color(4279503884),
      surfaceContainerLow: Color(4280424730),
      surfaceContainer: Color(4280753438),
      surfaceContainerHigh: Color(4281477160),
      surfaceContainerHighest: Color(4282200626),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
