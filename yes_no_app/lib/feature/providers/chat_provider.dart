import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

//para que sirve ChangeNotifier?
//Respuesta: sirve para que los widgets que esten escuchando este provider se actualicen
class ChatProvider extends ChangeNotifier {

  //lista de mensajes
  List<Message> messageList = [
    Message(text: 'Hola amor', fromWho: FromWho.me, imageUrl: 'imagen.png'),
    Message(text: 'Que tal?', fromWho: FromWho.me, imageUrl: 'imagen.png'),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me, imageUrl: 'imagen.png');
    messageList.add(newMessage);
    //actualizar la pantalla
    notifyListeners();
  }
}