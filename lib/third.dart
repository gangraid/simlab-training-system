import 'package:medicaltraining/components/text_box.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  //edit field
  Future<void> editField(String field) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text("Profile Page"),
          backgroundColor: Colors.grey[900],
        ),
        body: ListView(children: [
          const SizedBox(height: 50),

          //profilepic
          // const Icon(
          //   Icons.person,
          //   size: 72,
          // ),
          ClipOval(
            child: Image(
              image: AssetImage('lib/images/Vinth.jpg'),
              width: 120,
              height: 120,
              // fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10), //spacing
          //useremail
          Text(
            'ILoveYashodaHospitals@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ),

          const SizedBox(height: 50),

          //userdetails
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              'My Details',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //username
          MyTextBox(
            text: 'the_doc',
            sectionName: 'Username',
            onPressed: () => editField('username'),
          ),

          //name
          MyTextBox(
            text: 'Dr.Vinith',
            sectionName: 'Name',
            onPressed: () => editField('name'),
          ),

          //password
          MyTextBox(
            text: '*******',
            sectionName: 'Password',
            onPressed: () => editField('password'),
          ),

          //DOB
          MyTextBox(
            text: '-',
            sectionName: 'DOB',
            onPressed: () => editField('DOB'),
          ),
        ]));
  }
}
