import 'package:flutter/material.dart';
import 'package:medicaltraining/3.dart';
import 'package:medicaltraining/components/text_box.dart';


class CPR2 extends StatefulWidget {
  const CPR2({super.key});

  @override
  State<CPR2> createState() => _CPR2State();
}

class _CPR2State extends State<CPR2> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter==30) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CPR3()));
      }
    });
  }
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
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const <Widget>[
                      Text('Bring your hands together', style: TextStyle(color: Colors.green)),
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
              child: const Image(
                image: AssetImage('lib/images/face.png'),
                height: 120,
                width: 120,
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _counter++;
                });
                print(_counter);
                if(_counter==30)
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CPR3()));
              },
              child: SizedBox(
                  height: 175,
                  width: 175,
                  child: Image.network('lib/images/chestwithhands.png', fit: BoxFit.cover)
              ),
            ),
            // child: Container(
            //   padding: const EdgeInsets.all(0),
            //   margin: const EdgeInsets.all(0),
            //   child: const Image(
            //     image: AssetImage('lib/images/chest.png'),
            //     height: 200,
            //     width: 200,
            //   ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              //counter
              Center(child: Text(
                  _counter.toString(),
                style: TextStyle(
                  fontSize: 50,
                ),
              )),
            ],
          ),
        ],
      ),

    );
  }
}