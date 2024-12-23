import 'package:flutter/material.dart';
import 'package:medicaltraining/data/data.dart';
import 'package:medicaltraining/cprmain.dart';
import 'package:medicaltraining/CPRcompleted.dart';

class CPR3 extends StatefulWidget {
  const CPR3({super.key});

  @override
  State<CPR3> createState() => _CPR3State();
}

class _CPR3State extends State<CPR3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CPR'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: const Draggable(
                  child: const Image(
                    image: AssetImage('lib/images/mask.png'),
                    height: 100,
                    width: 100,
                  ),
                  feedback: Image(
                      image: AssetImage('lib/images/mask.png'),
                        height: 100,
                        width: 100,
                  ),
                  childWhenDragging: Image(
                    image: AssetImage('lib/images/blank.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const <Widget>[
                      Text('Bring your hands together', style: TextStyle(color: Colors.green)),
                      Text(' '),
                      Text('Perform 30 chest compressions', style: TextStyle(color: Colors.green)),
                      Text(' '),
                      Text('Give Mask', style: TextStyle(color: Colors.red)),
                    ]
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: const Image(
                image: AssetImage('lib/images/face.png'),
                height: 120,
                width: 120,
              ),
            ),
          ),
          Center(
            child: Container(
              child: DragTarget<Chest>(
                builder: (context, candidateDate, rejectedDate) => Container(
                  child: const Image(
                      image: AssetImage('lib/images/chestwithhands.png'),
                      height: 200,
                      width: 200,
                ),
              ),
                onWillAccept: (data) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CPRcompleted()));
                      return true;
                },
                onAccept: (data) {
                  if(data==true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CPRcompleted()));
                  }
                },

            ),
          ),
          ),
          Row(
            children: <Widget> [
              Container(
                // child: Text('')
              ),
            ],
          ),
        ],
      ),

    );
  }
}
