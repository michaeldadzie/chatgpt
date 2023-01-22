import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatgpt/core/utils/app_asset.dart';
import 'package:chatgpt/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AiMessage extends StatelessWidget {
  final String text;
  const AiMessage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark,
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                AppAsset.openai,
                height: 30,
                width: 30,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  text,
                  textStyle: GoogleFonts.raleway(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
