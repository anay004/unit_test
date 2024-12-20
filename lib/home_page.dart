import 'package:flutter/material.dart';
import 'package:unit_test/salary_calculation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var hourController = TextEditingController();
  int? salary;

  SalaryCalculation sc = SalaryCalculation();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Unit Testing")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              key: Key("hour_input"),
              controller: hourController,
              decoration: InputDecoration(
                labelText: "Enter hour",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Adjust padding for smaller height
              ),
              style: TextStyle(fontSize: 14), // Optional: make text smaller if needed
            ),
          ),

          SizedBox(height: 10,),
          ElevatedButton(
            key: Key("calculate_button"),
            onPressed: () {
              setState(() {
                int hour = int.parse(hourController.text);
                salary = sc.calculatesalary(hour);
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Set your desired button color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // This makes the button square
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12), // Adjust padding as needed
            ),
            child: Text("Calculate Salary", style: TextStyle(color: Colors.white)), // Optional: Set text style
          ),


          SizedBox(height: 10,),

          if( salary != null)...[
            Text("Your Salary (\$)"),
            Text(salary.toString(), style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),),
          ],
        ],
      ),

    );
  }
}