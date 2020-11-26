import 'package:flutter/material.dart';
import 'landingpage.dart';

void main() {
  runApp(Gesture());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/secondScreen': (context) => SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(),
        '/returnDataScreen': (context) => ReturnDataScreen(),
        '/replacementScreen': (context) => ReplacementScreen(),
        '/anotherScreen': (context) => AnotherScreen()
      },
      home: Scaffold(
          appBar: AppBar(
            title: Text("Navigation & Routing"),
          ),
          body: LandingPage()),
    );
  }
}

class Gesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Gesturee(),
    );
  }
}

class Gesturee extends StatefulWidget {
  @override
  _GestureeState createState() => _GestureeState();
}

class _GestureeState extends State<Gesturee> {
  final double boxSize = 150.0;
  int numpTaps = 0;
  int numpLong = 0;
  int numpDoub = 0;

  double posX = 0.0;
  double posY = 0.0;
  void center(BuildContext context){
    posX = (MediaQuery.of(context).size.width/2) - boxSize/2;
    posY = (MediaQuery.of(context).size.height/2)-boxSize/2-30;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(posX == 0){
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Stack(children: [
        Positioned(
          top: posY,
          left: posX,
          child: GestureDetector(
            onTap: () {
              setState(() {
                numpTaps++;
              });
            },
            onLongPress: () {
              setState(() {
                numpLong++;
              });
            },
            onDoubleTap: () {
              setState(() {
                numpDoub++;
              });
            },
            onVerticalDragUpdate: (DragUpdateDetails details){
              setState(() {
                double delta = details.delta.dy;
                posY += delta;
              });
            },
            onHorizontalDragUpdate: (DragUpdateDetails details){
              setState(() {
                double delta = details.delta.dx;
                posX += delta;
              });
            },
            child: Container(
              height: boxSize,
              width: boxSize,
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        child: SizedBox(
          height: 50,
          child: Text(
            'Taps: $numpTaps - Double Taps: $numpDoub - Long Press: $numpLong',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
