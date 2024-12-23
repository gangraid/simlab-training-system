import 'package:flutter/material.dart';
import 'package:medicaltraining/components/text_box.dart';
import 'package:medicaltraining/data/data.dart';
import 'package:medicaltraining/draggablepage.dart';

void main() {
  runApp(const MaterialApp(
    home: CPR3(),
  ));
}

class CPR3 extends StatelessWidget {
  const CPR3({super.key});

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
                  child: const Image(
                    image: AssetImage('lib/images/mask.png'),
                    height: 150,
                    width: 150,
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
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.all(0),
                child: const Image(
                  image: AssetImage('lib/images/chest.png'),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Row(
              children: <Widget> [
                Container(
                  child: const Draggable(
                    child: Image(
                        image: AssetImage('lib/images/lefthand.png'),
                        height: 100,
                        width: 100,
                    ),
                    feedback: Image(image: AssetImage('lib/images/CPR-hand-placement.jpeg')),
                  ),
                ),
                Container(
                  child: Image(image: AssetImage('lib/images/counter.png')),
                ),
                Container(
                  child: DragTarget<Hand>(
                    builder:(context, candidateData, rejectedData) => Container(
                    child: Image(
                        image: AssetImage('lib/images/righthand.png'),
                        height: 100,
                        width: 100,
                    ),
                    ),
                    onWillAccept: (data) => true,
                    onAccept: (data) {
                      AppBar(title: const Text('Correct!'),);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),

    );
  }
}
