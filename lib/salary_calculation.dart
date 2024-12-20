class SalaryCalculation {

  int perHourPayment = 400;
  int perHourPayment2 = 600;

  //function for calculate salary
  int calculatesalary(int hour) {
    if(hour<=40){
      return hour * perHourPayment;
    }
    else{
      int salary1=40*perHourPayment;
      int hour1=hour-40;
      int salary2=hour1*perHourPayment2;
      return salary1+salary2;

    }

  }
}