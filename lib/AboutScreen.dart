import 'package:flutter/material.dart';

//creating a class for the about page
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    //returning a scafold to act as the overall container
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 109, 238, 143) ,
      //creating a nav bar
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 201, 101, 7) ,
          //title for the nav bar
          title: Text('ABOUT JOYCE',
          //styling the nav bar
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Color.fromARGB(255, 18, 48, 19)
          ),
          ),
        ),
        //creating a body for the about page, writing texts and styling them
    body: Center(
      
       child: Column(
        children: [
        SizedBox(height: 200,),
          
          Text("Name: Adee Joyce",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Color.fromARGB(255, 18, 48, 19),
            
          ),),
          Text("Student Number: 222013",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Color.fromARGB(255, 18, 48, 19),
            
          ),),
          Text("Email: joyceadee17@gmail.com",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Color.fromARGB(255, 18, 48, 19),
            
          ),)
        ],
       ),
       )
    );
  }
}