import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlsWidget extends StatelessWidget {
  final VoidCallback onClickedPickImage;
  final VoidCallback onClickedScanText;
  final VoidCallback onClickedClear;
  final VoidCallback onClickedCamera;

  const ControlsWidget({
    @required this.onClickedPickImage,
    @required this.onClickedScanText,
    @required this.onClickedClear,
    @required this.onClickedCamera,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(width: 5, height: 5),
        FloatingActionButton.extended(
          tooltip: 'Take Photo',
          focusColor: Colors.blueAccent,
          focusElevation: 10,
          highlightElevation: 50,
          hoverElevation: 50,
          autofocus: true,
          hoverColor: Colors.blueAccent,
          splashColor: Color.fromARGB(255, 94, 183, 255),
          backgroundColor: Color.fromARGB(255, 114, 71, 255),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          onPressed: onClickedCamera,
          heroTag: onClickedCamera,
          label: Row(
            children: [Icon(Icons.add_a_photo_rounded), Text(' Take Photo')],
          ),
        ),
        const SizedBox(width: 5, height: 5),
        FloatingActionButton.extended(
          tooltip: 'Image Gallery',
          focusColor: Colors.blueAccent,
          focusElevation: 10,
          highlightElevation: 50,
          hoverElevation: 50,
          autofocus: true,
          hoverColor: Colors.blueAccent,
          splashColor: Color.fromARGB(255, 94, 183, 255),
          backgroundColor: Color.fromARGB(255, 114, 71, 255),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          onPressed: onClickedPickImage,
          heroTag: onClickedPickImage,
          label: Row(
            children: [Icon(Icons.photo_album_rounded), Text(' Image Gallery')],
          ),
        ),
        const SizedBox(width: 5, height: 5),
        FloatingActionButton.extended(
          tooltip: 'Scan Text',
          focusColor: Colors.blueAccent,
          focusElevation: 10,
          highlightElevation: 50,
          hoverElevation: 50,
          autofocus: true,
          hoverColor: Colors.blueAccent,
          splashColor: Color.fromARGB(255, 94, 183, 255),
          backgroundColor: Color.fromARGB(255, 114, 71, 255),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          onPressed: onClickedScanText,
          heroTag: onClickedScanText,
          label: Row(
            children: [Icon(Icons.scanner_rounded), Text(' Scan Text')],
          ),
        ),
        const SizedBox(width: 5, height: 5),
        FloatingActionButton.extended(
          tooltip: 'Clear',
          focusColor: Colors.blueAccent,
          focusElevation: 10,
          highlightElevation: 50,
          hoverElevation: 50,
          autofocus: true,
          hoverColor: Colors.blueAccent,
          splashColor: Color.fromARGB(255, 94, 183, 255),
          backgroundColor: Color.fromARGB(255, 114, 71, 255),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          onPressed: onClickedClear,
          heroTag: onClickedClear,
          label: Row(
            children: [Icon(Icons.clear_rounded), Text(' Clear')],
          ),
        ),
      ]);
}
