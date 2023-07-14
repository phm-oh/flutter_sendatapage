import 'package:flutter/material.dart';
import 'package:senddata/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> data = [
    "Canada",
    "Brazil",
    "USA",
    "Japan",
    "China",
    "UK",
    "Uganda",
    "Uruguay"
  ];

  void topage2(item) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MainPage2(name: item)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          var item = data[index];
          return GestureDetector(
            onTap: () => {topage2(item)},
            child: ListTile(
              title: Text(item),
              trailing: Text('data'),
            ),
          );
        },
      ),
    );
  }
}
