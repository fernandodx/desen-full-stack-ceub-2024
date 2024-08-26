import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286862357),
      surfaceTint: Color(4286862357),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958523),
      onPrimaryContainer: Color(4281014016),
      secondary: Color(4285684289),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294827453),
      onSecondaryContainer: Color(4280817669),
      tertiary: Color(4283851580),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292471223),
      onTertiaryContainer: Color(4279508737),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965492),
      onSurface: Color(4280359444),
      onSurfaceVariant: Color(4283450682),
      outline: Color(4286739816),
      outlineVariant: Color(4292134069),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806631),
      inversePrimary: Color(4294621810),
      primaryFixed: Color(4294958523),
      onPrimaryFixed: Color(4281014016),
      primaryFixedDim: Color(4294621810),
      onPrimaryFixedVariant: Color(4284955904),
      secondaryFixed: Color(4294827453),
      onSecondaryFixed: Color(4280817669),
      secondaryFixedDim: Color(4292919715),
      onSecondaryFixedVariant: Color(4283974444),
      tertiaryFixed: Color(4292471223),
      onTertiaryFixed: Color(4279508737),
      tertiaryFixedDim: Color(4290629020),
      onTertiaryFixedVariant: Color(4282272550),
      surfaceDim: Color(4293253324),
      surfaceBright: Color(4294965492),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963686),
      surfaceContainer: Color(4294634464),
      surfaceContainerHigh: Color(4294239962),
      surfaceContainerHighest: Color(4293845205),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284627456),
      surfaceTint: Color(4286862357),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288506410),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283711272),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287197270),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282074914),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285299280),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965492),
      onSurface: Color(4280359444),
      onSurfaceVariant: Color(4283187510),
      outline: Color(4285095249),
      outlineVariant: Color(4287002732),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806631),
      inversePrimary: Color(4294621810),
      primaryFixed: Color(4288506410),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4286665235),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287197270),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285487167),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285299280),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283654457),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293253324),
      surfaceBright: Color(4294965492),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963686),
      surfaceContainer: Color(4294634464),
      surfaceContainerHigh: Color(4294239962),
      surfaceContainerHighest: Color(4293845205),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281605376),
      surfaceTint: Color(4286862357),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284627456),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281343754),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283711272),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279969285),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282074914),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965492),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281082393),
      outline: Color(4283187510),
      outlineVariant: Color(4283187510),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806631),
      inversePrimary: Color(4294961363),
      primaryFixed: Color(4284627456),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282590720),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283711272),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282067220),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282074914),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280627470),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293253324),
      surfaceBright: Color(4294965492),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963686),
      surfaceContainer: Color(4294634464),
      surfaceContainerHigh: Color(4294239962),
      surfaceContainerHighest: Color(4293845205),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294621810),
      surfaceTint: Color(4294621810),
      onPrimary: Color(4282919168),
      primaryContainer: Color(4284955904),
      onPrimaryContainer: Color(4294958523),
      secondary: Color(4292919715),
      onSecondary: Color(4282395927),
      secondaryContainer: Color(4283974444),
      onSecondaryContainer: Color(4294827453),
      tertiary: Color(4290629020),
      onTertiary: Color(4280824850),
      tertiaryContainer: Color(4282272550),
      onTertiaryContainer: Color(4292471223),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279767564),
      onSurface: Color(4293845205),
      onSurfaceVariant: Color(4292134069),
      outline: Color(4288515713),
      outlineVariant: Color(4283450682),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293845205),
      inversePrimary: Color(4286862357),
      primaryFixed: Color(4294958523),
      onPrimaryFixed: Color(4281014016),
      primaryFixedDim: Color(4294621810),
      onPrimaryFixedVariant: Color(4284955904),
      secondaryFixed: Color(4294827453),
      onSecondaryFixed: Color(4280817669),
      secondaryFixedDim: Color(4292919715),
      onSecondaryFixedVariant: Color(4283974444),
      tertiaryFixed: Color(4292471223),
      onTertiaryFixed: Color(4279508737),
      tertiaryFixedDim: Color(4290629020),
      onTertiaryFixedVariant: Color(4282272550),
      surfaceDim: Color(4279767564),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359444),
      surfaceContainer: Color(4280622615),
      surfaceContainerHigh: Color(4281346337),
      surfaceContainerHighest: Color(4282069804),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294950518),
      surfaceTint: Color(4294621810),
      onPrimary: Color(4280553984),
      primaryContainer: Color(4290610499),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293182887),
      onSecondary: Color(4280423170),
      secondaryContainer: Color(4289170544),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290892192),
      onTertiary: Color(4279179520),
      tertiaryContainer: Color(4287141482),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279767564),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292462777),
      outline: Color(4289765522),
      outlineVariant: Color(4287594868),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293845205),
      inversePrimary: Color(4285087232),
      primaryFixed: Color(4294958523),
      onPrimaryFixed: Color(4280094208),
      primaryFixedDim: Color(4294621810),
      onPrimaryFixedVariant: Color(4283444736),
      secondaryFixed: Color(4294827453),
      onSecondaryFixed: Color(4280028673),
      secondaryFixedDim: Color(4292919715),
      onSecondaryFixedVariant: Color(4282790428),
      tertiaryFixed: Color(4292471223),
      onTertiaryFixed: Color(4278916096),
      tertiaryFixedDim: Color(4290629020),
      onTertiaryFixedVariant: Color(4281219607),
      surfaceDim: Color(4279767564),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359444),
      surfaceContainer: Color(4280622615),
      surfaceContainerHigh: Color(4281346337),
      surfaceContainerHighest: Color(4282069804),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966008),
      surfaceTint: Color(4294621810),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294950518),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293182887),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294311899),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290892192),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279767564),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966008),
      outline: Color(4292462777),
      outlineVariant: Color(4292462777),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293845205),
      inversePrimary: Color(4282328064),
      primaryFixed: Color(4294959814),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294950518),
      onPrimaryFixedVariant: Color(4280553984),
      secondaryFixed: Color(4294959814),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293182887),
      onSecondaryFixedVariant: Color(4280423170),
      tertiaryFixed: Color(4292734395),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290892192),
      onTertiaryFixedVariant: Color(4279179520),
      surfaceDim: Color(4279767564),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359444),
      surfaceContainer: Color(4280622615),
      surfaceContainerHigh: Color(4281346337),
      surfaceContainerHighest: Color(4282069804),
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
