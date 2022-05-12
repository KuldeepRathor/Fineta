import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize:Size(348,56),
                primary: Color(0xFF436CFF)
              ),
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
            SizedBox(height:16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize:Size(348,56),
                  primary: Colors.white,
                onPrimary: Colors.blue,
              ),
              onPressed: () {},
              child: const Text('Login'),
            ),
            SizedBox(height:38),
          ],
        ),
      ),

    );
  }
}
