import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/feature/chat/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/feature/chat/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/feature/chat/widgets/shared/message_field_box.dart';
import 'package:yes_no_app/feature/providers/chat_provider.dart';


class ChatScream extends StatelessWidget {
  const ChatScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              _showImageModal(context);
            },
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/5f/b4/ee/5fb4ee34ec23c23f713bb41ac0558084.jpg',
              ),
            ),
          ),
        ),
        title: const Text('Chat'),
        centerTitle: false,
      ),
      body: _chatView(), //Esto se puede ver como un div en html
    );
  }
}

void _showImageModal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://i.pinimg.com/736x/5f/b4/ee/5fb4ee34ec23c23f713bb41ac0558084.jpg',
                fit: BoxFit.cover,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el modal
              },
              child: const Text('Cerrar'),
            ),
          ],
        ),
      );
    },
  );
}

class _chatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: chatProvider.messageList.length  ,itemBuilder: (context, index) {
               final mesaage = chatProvider.messageList[index];
               return (mesaage.fromWho == FromWho.hers) ? HerMessageBubble(message: mesaage) : MyMessageBubble(message: mesaage);
              }),
            ),
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            )
          ],
        ),
      ),
    );
  }
}
