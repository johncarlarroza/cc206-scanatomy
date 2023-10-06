import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Iris());
  }
}

class Iris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scanatomy"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Irisdesc()));
          },
          child: Text("Iris"),
        ),
      ),
    );
  }
}

class Irisdesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scanatomy"),
      ),
      body: BottomAppBar(
        child: Align(
          alignment: Alignment.center,
          child: Text(
              "It regulates the amount of light that enters your eye. It forms the coloured, visible part of your eye in front of the lens. Light enters through a central opening called the pupil."),
        ),
      ),
    );
  }
}
