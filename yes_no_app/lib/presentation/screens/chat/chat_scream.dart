import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScream extends StatelessWidget {
  const ChatScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/skyhigh/images/5/53/Gwen.png/revision/latest/scale-to-width-down/300?cb=20141201201025&path-prefix=es'),
          ),
        ),
        title: const Text('Chat'),
        centerTitle: false,
      ),
      body: _chatView(), //Esto se puede ver como un div en html
    );
  }
}

class _chatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return (index % 2 == 0  ) ? const MyMessageBubble() : const HerMessageBubble();
              }),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
