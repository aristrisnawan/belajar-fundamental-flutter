import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Go To Scond Screen"),
              onPressed: (){},
            ),
            RaisedButton(
              child: Text("Navigation With Data"),
              onPressed: (){},
            ),
            RaisedButton(
              child: Text("Return Data from Screen"),
              onPressed: (){},
            ),
            RaisedButton(
              child: Text("Replace Screen"),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SecondScreenWithData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ReturnDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ReplacementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
