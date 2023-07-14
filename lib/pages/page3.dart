import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  // const Page3({super.key});
  static Future<void> navigatorPush(BuildContext context) async {
    return Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (_) => Page3(),
      ),
    );
  }

  // ignore: prefer_typing_uninitialized_variables
  var name;
  Page3({super.key, this.name});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 90,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
