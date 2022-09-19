import 'package:flutter/material.dart';
import 'package:ocrapplication/main.dart';
import 'package:flutter/services.dart';

class TextAreaWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClickedCopy;

  const TextAreaWidget({
    @required this.text,
    @required this.onClickedCopy,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Color.fromARGB(255, 204, 197, 245),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              child: SelectableText(
                text.isEmpty ? 'Scan any Image to get text!' : text,
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 38, 0, 206)),
                cursorColor: Colors.blueAccent,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(width: 5),
          FloatingActionButton(
            tooltip: 'Copy Text',
            focusColor: Colors.blueAccent,
            autofocus: true,
            hoverColor: Colors.blueAccent,
            splashColor: Color.fromARGB(255, 94, 183, 255),
            backgroundColor: Color.fromARGB(255, 114, 71, 255),
            foregroundColor: Color.fromARGB(255, 255, 255, 255),
            onPressed: onClickedCopy,
            child: Icon(Icons.copy),
          ),
        ],
      );
}
