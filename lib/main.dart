import 'package:chatgpt/features/home/presentation/home.dart';
import 'package:chatgpt/features/home/provider/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ChatGPT());
}

class ChatGPT extends StatelessWidget {
  const ChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatGPT',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ChatProvider()),
        ],
        child: const Home(),
      ),
    );
  }
}
