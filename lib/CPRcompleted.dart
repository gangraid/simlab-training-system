import 'package:flutter/material.dart';
import 'package:medicaltraining/cprmain.dart';
import 'package:medicaltraining/second.dart';
import 'second.dart';

class CPRcompleted extends StatefulWidget {
  const CPRcompleted({super.key});

  @override
  State<CPRcompleted> createState() => _CPRcompletedState();
}

class _CPRcompletedState extends State<CPRcompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'CPR TRAINING COMPLETED!',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(onPressed: () {Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondPage()));}, icon: Icon(Icons.home, size: 50, color: Colors.white,))
        ],
      ),
    );
  }
}
