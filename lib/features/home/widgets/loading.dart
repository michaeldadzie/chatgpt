import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatgpt/core/utils/app_asset.dart';
import 'package:chatgpt/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPlaceholder extends StatelessWidget {
  final String text;
  const LoadingPlaceholder({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff444654),
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: const Color(0xff0fa37f),
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset(
                  AppAsset.openai,
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  '...',
                  textStyle: GoogleFonts.raleway(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
              repeatForever: true,
            ),
          ),
        ],
      ),
    );
  }
}
