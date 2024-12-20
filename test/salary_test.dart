import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/salary_calculation.dart';


void main()
{


  //for a single unit test
  test("Simple Test", (){

    SalaryCalculation sc=SalaryCalculation();

    int salary=sc.calculatesalary(1);
    expect(salary, 400);

  });


  //for multiple unit tests
  group("salary test", (){

    test("Salary Test 1", (){

      SalaryCalculation sc =SalaryCalculation();

      int salary= sc.calculatesalary(35);
      expect(salary, 14000);

    });

    test("Salary Test 2", (){

      SalaryCalculation sc= SalaryCalculation();

      int salary=sc.calculatesalary(45);
      expect(salary, 19000);


    });


  });
}