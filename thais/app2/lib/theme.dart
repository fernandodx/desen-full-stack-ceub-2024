import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281753245),
      surfaceTint: Color(4281753245),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286753004),
      onPrimaryContainer: Color(4278197312),
      secondary: Color(4286600704),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294290467),
      onSecondaryContainer: Color(4282394880),
      tertiary: Color(4289527962),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294858210),
      onTertiaryContainer: Color(4280287260),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282599248),
      outline: Color(4285757313),
      outlineVariant: Color(4291020498),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4289382399),
      primaryFixed: Color(4292273151),
      onPrimaryFixed: Color(4278197054),
      primaryFixedDim: Color(4289382399),
      onPrimaryFixedVariant: Color(4279846531),
      secondaryFixed: Color(4294958511),
      onSecondaryFixed: Color(4280817664),
      secondaryFixedDim: Color(4294949443),
      onSecondaryFixedVariant: Color(4284563456),
      tertiaryFixed: Color(4294957040),
      onTertiaryFixed: Color(4281991218),
      tertiaryFixedDim: Color(4294946024),
      onTertiaryFixedVariant: Color(4286840949),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439922),
      surfaceContainer: Color(4294045165),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279386751),
      surfaceTint: Color(4281753245),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283332021),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284235008),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288506624),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4286447727),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291634102),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282336076),
      outline: Color(4284178281),
      outlineVariant: Color(4286020485),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4289382399),
      primaryFixed: Color(4283332021),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281556122),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4288506624),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4286403584),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4291634102),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4289265814),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439922),
      surfaceContainer: Color(4294045165),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198602),
      surfaceTint: Color(4281753245),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279386751),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281409280),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284235008),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282712125),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286447727),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280296492),
      outline: Color(4282336076),
      outlineVariant: Color(4282336076),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4293258495),
      primaryFixed: Color(4279386751),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201438),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284235008),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282329088),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286447727),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283891789),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729305),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439922),
      surfaceContainer: Color(4294045165),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289382399),
      surfaceTint: Color(4289382399),
      onPrimary: Color(4278202212),
      primaryContainer: Color(4285437142),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294953852),
      onSecondary: Color(4282657792),
      secondaryContainer: Color(4293106954),
      onSecondaryContainer: Color(4281211904),
      tertiary: Color(4294946024),
      onTertiary: Color(4284350547),
      tertiaryContainer: Color(4291634102),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279505683),
      onSurface: Color(4293255905),
      onSurfaceVariant: Color(4291020498),
      outline: Color(4287467675),
      outlineVariant: Color(4282599248),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4281753245),
      primaryFixed: Color(4292273151),
      onPrimaryFixed: Color(4278197054),
      primaryFixedDim: Color(4289382399),
      onPrimaryFixedVariant: Color(4279846531),
      secondaryFixed: Color(4294958511),
      onSecondaryFixed: Color(4280817664),
      secondaryFixedDim: Color(4294949443),
      onSecondaryFixedVariant: Color(4284563456),
      tertiaryFixed: Color(4294957040),
      onTertiaryFixed: Color(4281991218),
      tertiaryFixedDim: Color(4294946024),
      onTertiaryFixedVariant: Color(4286840949),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676853),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289842175),
      surfaceTint: Color(4289382399),
      onPrimary: Color(4278195764),
      primaryContainer: Color(4285437142),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294953852),
      onSecondary: Color(4281080576),
      secondaryContainer: Color(4293106954),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294947817),
      onTertiary: Color(4281401386),
      tertiaryContainer: Color(4293937365),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505683),
      onSurface: Color(4294900473),
      onSurfaceVariant: Color(4291283670),
      outline: Color(4288652206),
      outlineVariant: Color(4286546829),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4279912325),
      primaryFixed: Color(4292273151),
      onPrimaryFixed: Color(4278194475),
      primaryFixedDim: Color(4289382399),
      onPrimaryFixedVariant: Color(4278203759),
      secondaryFixed: Color(4294958511),
      onSecondaryFixed: Color(4279963392),
      secondaryFixedDim: Color(4294949443),
      onSecondaryFixedVariant: Color(4283117824),
      tertiaryFixed: Color(4294957040),
      onTertiaryFixed: Color(4280811554),
      tertiaryFixedDim: Color(4294946024),
      onTertiaryFixedVariant: Color(4285005916),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676853),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289382399),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289842175),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966007),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294950744),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294947817),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505683),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294703871),
      outline: Color(4291283670),
      outlineVariant: Color(4291283670),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278200665),
      primaryFixed: Color(4292732927),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289842175),
      onPrimaryFixedVariant: Color(4278195764),
      secondaryFixed: Color(4294960061),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294950744),
      onSecondaryFixedVariant: Color(4280357888),
      tertiaryFixed: Color(4294958834),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294947817),
      onTertiaryFixedVariant: Color(4281401386),
      surfaceDim: Color(4279505683),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281676853),
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
