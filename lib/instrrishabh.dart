import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instructions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Myhomepage(),
    );
  }
}



class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  String text="";

  void changeText(String text){
    this.setState(() {
      this.text=text;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Instructions")), 
    body: Stack(
      children: <Widget>[

        Padding(
          padding: EdgeInsets.all(15),
          child:  Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(""),
            Text(""),

            const Text("1. Open the mouth of the patient.",style: TextStyle(
              fontSize: 20,
            ), 
            textAlign: TextAlign.left ,),
            Text(""),
            const Text("2. Bring your hands together as  ", style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.left,),
            Text("     shown in the figure", style: TextStyle(
              fontSize: 20,
            ),),
            Text(""),
            Center(
            child: Image(
              image: AssetImage('images/Capture.PNG'),
              height: 150,
              width: 650,
            ),
            
            ),
            Text(""),

            Text("3. Perform 30 chest compressions.", style: TextStyle(
              fontSize: 20,
            ),),

            Text(""),

            Text("4. Give mask to patient for 2 rescue ", style: TextStyle(
              fontSize: 20,
            ),),

            Text("     breaths.", style: TextStyle(
              fontSize: 20,
            ),),

            Text(''),
            Text(''),
            Text(''),

            Center(
              child: Link(
                target: LinkTarget.self,
                uri: Uri.parse("https://www.youtube.com/watch?v=yBfpSnAHX9Q"),
                builder: (context,FollowLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 80),
                    textStyle: TextStyle(fontSize:28),
                  ),
                  child: Text("Video", style: TextStyle(
                    fontSize: 30,
                  ),),
                  onPressed: FollowLink,
                )
              ),
            )

            
            
          ],
        )
        
       
          
        ),

        
          
        

        

        Container(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50, width: 1000),
              child: ElevatedButton(
                     onPressed: (){},
                    child: Text('START'), 
                    
                   
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),

            )
            
              
          ),
          
      ]
      
    )
          
            
         
      

    ); 
    
     
        
      
  }
}

