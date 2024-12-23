import 'package:flutter/material.dart';
import 'package:medicaltraining/components/text_box.dart';
import 'package:medicaltraining/data/data.dart';
import 'package:medicaltraining/draggablepage.dart';
import 'package:medicaltraining/2.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'failure.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
    home: CPR(),
  ));
}

class CPR extends StatefulWidget {
  const CPR({super.key});

  @override
  State<CPR> createState() => _CPRState();
}

class _CPRState extends State<CPR> {

  void newPage() {
    setState(() {
      debugPrint('works');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CPR'),
        backgroundColor: Colors.blueAccent,
      ),
      body:
      Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                  child: const Image(
                    image: AssetImage('lib/images/mask.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const <Widget>[
                      Text('Bring your hands together', style: TextStyle(color: Colors.red)),
                      Text(' '),
                      Text('Perform 30 chest compressions', style: TextStyle(color: Colors.red)),
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
                child: DragTarget<Face>(
                  builder:(context, candidateData, rejectedData) => Container(
                  child: const Image(
                    image: AssetImage('lib/images/face.png'),
                    height: 120,
                    width: 120,
                  ),
                ),
                  onWillAccept: (data) {
                    Future.delayed(const Duration(milliseconds: 100), () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fail()));
                    });
                    return true;
                  },
                  onAccept: (data) {

                  },
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Container(
                  child: const Draggable(
                    child: Image(
                        image: AssetImage('lib/images/lefthand.png'),
                        height: 100,
                        width: 100,
                    ),
                    feedback: Image(image: AssetImage('lib/images/CPR-hand-placement.jpeg')),
                    childWhenDragging: Image(
                        image: AssetImage('lib/images/blank.png'),
                        height: 100,
                        width: 100,
                    ),
                  ),
                ),
                // Container(
                //   child: Image(image: AssetImage('lib/images/counter.png')),
                // ),
                Container(
                  child: DragTarget<Hand>(
                    builder:(context, candidateData, rejectedData) => Container(
                    child: Image(
                        image: AssetImage('lib/images/righthand.png'),
                        height: 100,
                        width: 100,
                    ),
                    ),
                    onWillAccept: (data) {
                    Future.delayed(const Duration(milliseconds: 100), () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CPR2()));
                    });
                      return true;
                    },
                    onAccept: (data) {
                      if(data==true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CPR2()));
                      }
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
