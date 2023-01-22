import 'package:chatgpt/core/utils/app_asset.dart';
import 'package:chatgpt/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  const ChatMessage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppAsset.avatar,
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 3,
                top: 8,
              ),
              child: Text(
                text,
                style: GoogleFonts.raleway(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
