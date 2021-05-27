import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Scoreapp());
}

class Scoreapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scoreapp",
      home: Scorehome(),
    );
  }
}

class Scorehome extends StatefulWidget {
  @override
  _ScorehomeState createState() => _ScorehomeState();
}

class _ScorehomeState extends State<Scorehome> {
  int num = 0;

  void increase() {
    setState(() {
      num++;
    });
  }

  void decrease() {
    setState(() {
      num--;
    });
  }

  void reset() {
    setState(() {
      num = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Text("Score is");
    return Scaffold(
      appBar: AppBar(
        title: Text("ScoreChanger"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: reset,
      ),
      body: Column(children: [
        SizedBox(height: 10),
        Center(
            child: Text(
          "Score is ",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        )),
        Center(
            child: Text(
          num.toString(),
          style: TextStyle(
            fontSize: 135,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        )),
        SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
            color: Colors.blue,
            child: Text("Increase"),
            onPressed: increase,
          ),
          SizedBox(width: 10),
          RaisedButton(
            color: Colors.red,
            child: Text("Decrease"),
            onPressed: decrease,
          ),
        ])
      ]),
    );
  }
}
