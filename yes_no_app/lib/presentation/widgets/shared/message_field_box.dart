//import material
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
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
          print('Valor de la caja de texto');
        },
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted:(value){
        print('Submit: $value');
      },
      onChanged: (value){
        print('Cambio: $value');
      },
    );
  }
}
