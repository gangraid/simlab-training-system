import 'package:flutter/material.dart';
import 'package:medicaltraining/cprmain.dart';

class Fail extends StatefulWidget {
  const Fail({super.key});

  @override
  State<Fail> createState() => _FailState();
}

class _FailState extends State<Fail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Patient Died',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(onPressed: () {Navigator.push(context,
              MaterialPageRoute(builder: (context) => CPR()));}, icon: Icon(Icons.replay, size: 50, color: Colors.white,))
        ],
      ),
    );
  }
}
