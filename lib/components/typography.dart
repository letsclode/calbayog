import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components.dart';

// Simple
TextStyle headlineTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
        fontSize: 40,
        color: textPrimary,
        letterSpacing: 1.5,
        fontWeight: FontWeight.bold));

TextStyle headlineSecondaryTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
        fontSize: 20, color: textPrimary, fontWeight: FontWeight.bold));

TextStyle subtitleTextStyle = GoogleFonts.openSans(
    textStyle:
        const TextStyle(fontSize: 14, color: textSecondary, letterSpacing: 1));

TextStyle bodyTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(fontSize: 14, color: textPrimary));

TextStyle buttonTextStyle = GoogleFonts.montserrat(
    textStyle:
        const TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1));

// Advanced
// TODO: Add additional text styles.