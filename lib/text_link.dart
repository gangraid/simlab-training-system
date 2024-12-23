import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatefulWidget {
  const Link({super.key});

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> {

  _launchurl() async{
    const url = "https://www.youtube.com/watch?v=yBfpSnAHX9Q";
    if(await canLaunchUrl(url as Uri)){
      await launch(url);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),),
      body: ElevatedButton(
                     onPressed:_launchurl,
                    child: Text('Video'), 
                    
                   
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),
    );

  }
}