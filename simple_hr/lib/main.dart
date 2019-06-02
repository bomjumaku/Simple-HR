//TODO: if maxHR<minHR, give the user an indicator. If trying to start,
// throw an error popup. 



import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple HR',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Simple HR'),
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
  int _minHR = 0;
  int _maxHR = 0;
  int _currentHR = 0;

  void _start(){
    // start pinging the Polar HR monitor and checking if my HR is lower or
    // higher than it should be.
    print("I feel like something should be happening...");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration:
                  InputDecoration(labelText: 'Maximum Heart Rate'),
              onChanged: (val) =>
                  setState(() => _maxHR = int.parse(val)),
            ),
            TextField(
              decoration:
                  InputDecoration(labelText: 'Minimum Heart Rate'),
              onChanged: (val) =>
                  setState(() => _minHR = int.parse(val)),
            ),
            Text('Maximum Heart Rate: ' + _maxHR.toString(),),
            Text('Minimum Heart Rate: ' + _minHR.toString(),),
            Text('Current Heart Rate: ' + _currentHR.toString(),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _start,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
