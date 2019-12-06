import 'package:flutter/material.dart';

/* void means that the function does not return anything. */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: ' Simple Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // variable stores an integer
  int _counter = 0;
  String message = '';

    // when user click on button excute this code
  void _incrementCounter() {
    // each time the user press the button
    setState(() {
      // update the _counter variable by adding the current value by 1
      _counter++;
    });

    if(_counter >= 20) {
      setState(() {
        _counter = 20;
        message = 'No more counting go back to zero 😄';
      });
    }
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      message = '';
    });

    if(_counter <= 0) {
      _counter = 0;
    }
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      message = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '$_counter',
                style: TextStyle(color: Colors.red, fontSize: 50.0),
              ),
              Text(
                '$message',
                style: TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              FloatingActionButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.add),
              ),
               FloatingActionButton(
                onPressed: _resetCounter,
                child: Icon(Icons.settings_backup_restore),
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                child: Icon(Icons.remove),
              ),
             
            ],
          ),
        ));
  }
}
