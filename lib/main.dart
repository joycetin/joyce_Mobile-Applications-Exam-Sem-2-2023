//Create a simple user interface in fluter to design a simple interface with the following elements: app bar with the title "Student  App"A button labeled "show Details", atext widget that initially displays "student details"
//toggle button text: when the "show details" button is pressed, change the text to display "student details: John Doe, Age:20, Grade:A."

//User interface
import 'package:flutter/material.dart';
import 'package:studentapp/AboutScreen.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Student App'),
//         ),
//         body: StudentDetailsScreen(),
//       ),
//     );
//   }
// }

// class StudentDetailsScreen extends StatefulWidget {
//   @override
//   _StudentDetailsScreenState createState() => _StudentDetailsScreenState();
// }

// class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
//   String studentDetails = 'Student details';

//   void showDetails() {
//     setState(() {
//       studentDetails = 'Student details: John Doe, Age: 20, Grade: A';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             studentDetails,
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: showDetails,
//             child: Text('Show Details'),
//           ),
//         ],
//       ),
//     );
//   }
// }


//State Management
//Convert the existing widget to a Stateful widget
//Implement state management so that the button toggles between showing and hiding the students details.



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 109, 238, 143),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 201, 101, 7) ,
          title: Text('Student App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Color.fromARGB(255, 18, 48, 19)
          ),
          ),
        ),
        body: StudentDetailsScreen(),
      ),
    );
    
  }
}

class StudentDetailsScreen extends StatefulWidget {
  @override
  //Here we create state
  _StudentDetailsScreenState createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  bool showDetails = false; // This is a boolean to ask whether to show or hide details

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails; // Here we toggle the value to see a different value
    });
  }

  @override
  Widget build(BuildContext context) {
    String studentDetailsText = showDetails
        ? 'Student details: John Doe, Age: 20, Grade: A'
        : 'Student details';

    return Center(
      //we align our content to the center in a column format
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //styling the text
          Text(
            studentDetailsText,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          //we use an elevated button which toggles to show and hide details
           ElevatedButton(
            onPressed: toggleDetails,
            child: Text(showDetails ? 'Hide Details' : 'Show Details'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 243, 114, 33)),
              ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About())
                  
                );
              },
              child: Text('Next'),
              
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 18, 86, 39)),
              ),
            ),
        ],
      ),
    );
  }
}


