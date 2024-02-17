import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  // lista que guardara los mensajes del chat
  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'Llegaste del trabajo?', fromWho: FromWho.me),
  ];

  // metodo para enviar Mensaje
  Future<void> sendMessage(String text) async {
    final message = Message(text: text, fromWho: FromWho.me);
    messageList = [...messageList, message];
    notifyListeners();
  }
}
