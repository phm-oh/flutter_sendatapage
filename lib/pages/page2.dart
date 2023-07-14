import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage2 extends StatefulWidget {
  static Future<void> navigatorPush(BuildContext context) async {
    return Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (_) => MainPage2(),
      ),
    );
  }

  var name;
  MainPage2({this.name});

  @override
  _State createState() => _State();
}

class _State extends State<MainPage2> {
  final _isHours = true;

  @override
  void initState() {
    super.initState();
  }

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
