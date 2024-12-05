//import material
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    //limpiar la caja de texto
    final textController = TextEditingController();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      contentPadding: const EdgeInsets.all(20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      hintText: 'Enviar mensaje',
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final value = textController.value.text;
          print('Valor de la caja de texto: $value');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit: $value');
        textController.clear();
      },
    );
  }
}
