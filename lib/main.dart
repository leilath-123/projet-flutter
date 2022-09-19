import 'package:ocrapplication/widget/text_recognition_widget.dart';
import 'package:flutter/material.dart';
import 'package:ocrapplication/widget/splash_screen.dart';
import 'package:ocrapplication/widget/text_recognition_widget.dart';
import 'package:ocrapplication/widget/controls_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Image to Text';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
              backgroundColor: Color.fromARGB(255, 114, 71, 255),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)),
          scaffoldBackgroundColor: Color.fromARGB(255, 191, 202, 255),
        ),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 25),
              TextRecognitionWidget(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      );
}
