// Defining a students class
class Student {
  //assigning data types
  String my_name;
  int my_age;
  String my_grade;

  Student(this.my_name, this.my_age, this.my_grade);
  
  //using the getter method to display the information
  String get name => my_name;
  set name(String name) => my_name = name;

  int get age => my_age;
  set age(int age) => my_age = age;

  String get grade => my_grade;
  set grade(String grade) => my_grade = grade;
}

void main() {
  // Creating instances of the Student class
  var student1 = Student('Ade', 87, 'A');

  // Accessing and modifying private attributes using getter and setter methods
  student1.name = 'Ade';
  student1.age = 87;
  student1.my_grade = 'A';

  // Accessing private attributes using getter methods and displaying them
  print("About me",);
  print('Name: ${student1.name} ');
  print('Age: ${student1.age}');
  print('Grade: ${student1.grade}');

  print("Thank you Gorret for teaching me");
}
