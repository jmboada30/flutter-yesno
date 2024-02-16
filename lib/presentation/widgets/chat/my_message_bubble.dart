import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    // para tomar los colores del tema principal
    final colors = Theme.of(context).colorScheme;

    return Column( 
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mis mensajes', style: TextStyle(color: Colors.white),),
          ),
        ),

        const SizedBox(height: 10,)
      ],
    );
  }
}
