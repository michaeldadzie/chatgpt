import 'package:chatgpt/core/utils/app_asset.dart';
import 'package:chatgpt/core/utils/colors.dart';
import 'package:chatgpt/features/home/provider/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController chatcontroller;
  const ChatInput({
    Key? key,
    required this.chatcontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 5,
          right: 5,
        ),
        decoration: const BoxDecoration(
          color: Color(0xff444654),
          border: Border(
            top: BorderSide(
              color: white,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                AppAsset.avatar,
                height: 40,
              ),
            ),
            Expanded(
              flex: 5,
              child: TextFormField(
                onFieldSubmitted: (e) {
                  context.read<ChatProvider>().sendChat(e);
                  chatcontroller.clear();
                },
                controller: chatcontroller,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  filled: true,
                  fillColor: Color(0xff343541),
                  suffixIcon: Icon(
                    Icons.send,
                    color: Color(0xffacacbe),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
