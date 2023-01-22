import 'package:chatgpt/features/home/domain/service/openai_service.dart';
import 'package:chatgpt/features/home/widgets/ai_message.dart';
import 'package:chatgpt/features/home/widgets/chat_message.dart';
import 'package:chatgpt/features/home/widgets/loading.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  TextEditingController controller = TextEditingController();
  final _service = OpenAIService();

  List<Widget> messages = [];
  List<Widget> get getMessages => messages;

  Future<void> sendChat(String prompt) async {
    addUserMessage(prompt);

    Map<String, dynamic> response = await _service.sendMessage(
      prompt: prompt,
    );
    String text = response['choices'][0]['text'];
    messages.removeLast();
    messages.add(AiMessage(text: text));
    notifyListeners();
  }

  void addUserMessage(txt) {
    messages.add(ChatMessage(text: txt));
    messages.add(const LoadingPlaceholder(text: "..."));
    notifyListeners();
  }
}
