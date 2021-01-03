import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _quotes = [
    "Don't comment bad code, rewrite it. - Brian Kernighan",
    "First, solve the problem. Then, write the code. – John Johnson",
    "In order to be irreplaceable, one must always be different – Coco Chanel",
    "Perfection is achieved not when there is nothing more to add, but rather when there is nothing more to take away",
    "Code is like humor. When you have to explain it, it’s bad. – Cory House",
    "Fix the cause, not the symptom. – Steve Maguire ",
    "Optimism is an occupational hazard of programming: feedback is the treatment.  Kent Beck",
    "Simplicity is the soul of efficiency. – Austin Freeman",
    "Before software can be reusable it first has to be usable. – Ralph Johnson",
    "Make it work, make it right, make it fast. – Kent Beck",
  ];

  int quoteNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.withOpacity(0.8),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          brightness: Brightness.dark,
          title: Text('Programmers Echo'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  quoteNo = 0;
                });
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 350,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    _quotes[quoteNo],
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                //color: Colors.amber,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.red,
                  ]),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '${quoteNo + 1}/${_quotes.length}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              RaisedButton(
                color: Colors.purpleAccent,
                child: Text(
                  'Inspire Me',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  if (quoteNo < _quotes.length - 1)
                    setState(() {
                      quoteNo = quoteNo + 1;
                    });
                },
              ),
            ],
          ),
        ));
  }
}
