import 'package:flutter/material.dart';
import 'package:medicaltraining/data/data.dart';

class DraggablePage extends StatefulWidget{
  @override
  _DraggablePage createState() => _DraggablePage();
}

class _DraggablePage extends State<DraggablePage>{
  @override
  //final imge = 'assets/right-hand.png';

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('CPR')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //Image.asset('assets/right-hand.png'),
              buildOrigin(),
              buildTargets(context),
            ],
          ),
        ),
      );



  Widget buildTargets(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      buildTarget(
        context,
        //text: 'first-hand',
      )
    ],
  );

  Widget buildOrigin() => Container(
      alignment: Alignment.center,
      child: Draggable(
        feedback: Image.asset('assets/CPR-hand-placement.jpeg',),
        child: Image.asset('assets/left-hand.png'),
      ),
  );

  Widget buildTarget(
    BuildContext context, {
    String text = 'assets/left-hand.png',
  }) =>
      CircleAvatar(
        radius: 75,
        backgroundColor: Theme.of(context).primaryColor,
        child: DragTarget<Hand>(
          builder: (context, candidateData, rejectedData) => Center(
            child: Image.asset('assets/right-hand.png'),
            //Text(
            //   text,
            //   style: TextStyle(color: Colors.white, fontSize: 24),
            // ),
          ),
          onWillAccept: (data) => true,
          onAccept: (data) {
            AppBar(title: const Text('Correct!'),);
          },
        )
      );
}
