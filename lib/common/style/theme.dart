import 'package:animations/animations.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeFlex {
  ThemeFlex([this.scheme = FlexScheme.redM3]);

  final FlexScheme scheme;

  late final light = FlexThemeData.light(
    scheme: scheme,
    subThemesData: const FlexSubThemesData(
      interactionEffects: false,
      tintedDisabledControls: false,
      blendOnColors: false,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      inputDecoratorUnfocusedBorderIsColored: false,
      tooltipRadius: 4,
      tooltipSchemeColor: SchemeColor.inverseSurface,
      tooltipOpacity: 0.9,
      snackBarElevation: 6,
      snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
      navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarMutedUnselectedLabel: false,
      navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationBarIndicatorOpacity: 1.00,
      navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
      navigationRailLabelType: NavigationRailLabelType.none,
    ),
    keyColors: const FlexKeyColors(
      keepSecondary: true,
      keepPrimary: true,
      keepPrimaryContainer: true,
      keepSecondaryContainer: true,
      keepTertiary: true,
      keepTertiaryContainer: true,
      useTertiary: true,
      useSecondary: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    useMaterial3ErrorColors: true,
    swapLegacyOnMaterial3: true,
    appBarStyle: FlexAppBarStyle.primary,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  late final dark = FlexThemeData.dark(
    scheme: scheme,
    subThemesData: const FlexSubThemesData(
      interactionEffects: false,
      tintedDisabledControls: false,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      inputDecoratorUnfocusedBorderIsColored: false,
      tooltipRadius: 4,
      tooltipSchemeColor: SchemeColor.inverseSurface,
      tooltipOpacity: 0.9,
      snackBarElevation: 6,
      snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
      navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarMutedUnselectedLabel: false,
      navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationBarIndicatorOpacity: 1.00,
      navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
      navigationRailLabelType: NavigationRailLabelType.none,
    ),
    keyColors: const FlexKeyColors(
      keepSecondary: true,
      keepPrimary: true,
      keepPrimaryContainer: true,
      keepSecondaryContainer: true,
      keepTertiary: true,
      keepTertiaryContainer: true,
      useTertiary: true,
      useSecondary: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    useMaterial3ErrorColors: true,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
