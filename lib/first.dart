// import 'package:cpr_app/second.dart';
import 'package:flutter/material.dart';
import 'hamburger.dart';
// import 'package:pie_chart/pie_chart.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

String buttonName = 'Click me!';
int currentIndex = 0;

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int completed = 3;
    int remaining = 7;
    Map<String, double> dataMap = {
      "Completed": completed.toDouble(),
      "Remaining": remaining.toDouble(),
    };
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text('Progress')),
      body: Center(
        child: SizedBox(
          height: (2 * height) / 3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       buttonName = 'Clicked!';
              //     });
              //     Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (BuildContext context) {
              //       return const SecondPage();
              //     }));
              //   },
              //   child: Text(buttonName),
              // ),
              // Container(
              //   height: 150,
              //   width: 150,
              //   decoration: BoxDecoration(
              //     color: Colors.red,
              //     shape: BoxShape.circle,
              //   ),
              // ),
              // PieChart(
              //   dataMap: dataMap,
              //   chartRadius: width / 2.5,
              // ),
              const SizedBox(height: 30),
              const Text(
                'Procedures Completed:',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CPR'),
                  SizedBox(width: 10),
                  Icon(Icons.check),
                ],
              ),
              // const Text('CPR'),
              // const SizedBox(
              //   width: 10,
              // ),
              // const Text('Date: '),
              const SizedBox(height: 20),
              const Text(
                'Procedures Remaining:',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Text('Procedure 2'),
              const SizedBox(height: 20),
              const Text('Procedure 3'),
              const SizedBox(height: 20),
              const Text('Procedure 4'),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
