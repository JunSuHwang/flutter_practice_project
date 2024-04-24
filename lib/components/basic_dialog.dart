import 'package:flutter/material.dart';

class BasicDialog extends StatelessWidget {
  String content;
  String buttonText;
  Function() buttonFunction;

  BasicDialog({
    super.key,
    required this.content,
    required this.buttonText,
    required this.buttonFunction,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Center(
              child: Text(content),
            ),
          ),
        ],
      ),
      actions: [
        Center(
          child: FilledButton(
            onPressed: buttonFunction,
            child: Text(buttonText),
          ),
        )
      ],
    );
  }
}
