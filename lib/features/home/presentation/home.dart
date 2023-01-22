import 'package:chatgpt/core/utils/colors.dart';
import 'package:chatgpt/features/home/provider/chat_provider.dart';
import 'package:chatgpt/features/home/widgets/chat_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343541),
      appBar: AppBar(
        backgroundColor: const Color(0xff343541),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: white,
          ),
        ),
        elevation: 0,
        title: Text(
          'New Chat',
          style: GoogleFonts.raleway(
            color: white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<ChatProvider>(
          builder: (_, __, ___) {
            List<Widget> messages = __.getMessages;
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  child: ListView(
                    children: [
                      const Divider(
                        color: Color(0xffd1d5db),
                      ),
                      for (int i = 0; i < messages.length; i++) messages[i]
                    ],
                  ),
                ),
                //input
                ChatInput(
                  chatcontroller: __.controller,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
