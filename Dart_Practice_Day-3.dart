import 'dart:math';

String getResultStatus(int number) {
  if (number < 40) {
    return "F";
  } else if (number >= 40 && number <= 49) {
    return "E";
  } else if (number >= 50 && number <= 54) {
    return "D";
  } else if (number >= 55 && number <= 59) {
    return "C";
  } else if (number >= 60 && number <= 69) {
    return "B";
  } else if (number >= 70 && number <= -79) {
    return "A";
  } else if (number <= 80) {
    return "A+";
  } else {
    return "Enter Number";
  }

}

//Create a function that takes an integer as an argument and returns the cubic number of that argument.(Example: input: 3, output: 27)
num cubicSum(int x) {
  return x * pow(x, 2);
}

//Create a function that takes 3 integers and returns the average. (Example: input: 5, 10, 15 output: 10)
num average(int x, int y, int z) {
  return (x + y + z) / 3;
}

//Create a function that calculates the area of a circle and returns.
// (Hint: take radius as input argument. Area of a circle = π × r², where r is radius and pi = 3.14159

num circleArea(num x) {
  return 3.14159 * (x * pow(x, 2));
}

num cubbArea(num a) {
  return 6 * a * pow(a, 1);
}

//Create a function that converts time from seconds to hours.
// Example: input 3600 (sec), output 1 (hour)
num hourToSec(int h) {
  return h * 60 * 60;
}

// Create a function that converts temperature from Celcius to Fahrenheit.
// Example: input 20 (C), output: 68 (F)
num celToFehr(double celcius) {
  return (((9 / 5) * celcius) + 32);
}

//Create a function that takes a list of numbers as an argument and returns the sum of all numbers.
// Example: input: [25, 50, 75, 100], output: 250

num sumn(List<double> numbers) {
  double sum =
      numbers.fold(0, (previousValue, element) => previousValue + element);
  return sum;

  // double sum = 0;
  //
  // for (double number in numbers) {
  //   return sum += number;
  // }
}

//Create a function that takes a String as an argument.
// Check whether the String is at least 5 chars long. If it is, then return “Valid”, else “Invalid”.

String check(String word) {
  if (5 == word.length) {
    return "Valid";
  } else
    return "Invalid";
}

//Create a function that takes the number of the month and returns the name of that month.
// For example, input: 7, output: July
String month(int num) {
  switch (num) {
    case 1:
      return "January";
    case 2:
      return "Febuary";
    case 3:
      return "March";
    case 4:
      return "April";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "Jully";
    case 8:
      return "August";
    case 9:
      return "Septemvber";
    case 10:
      return "October";
    case 11:
      return "Novemver";
    case 12:
      return "December";
    default:
      return 'Invalid month number';
  }
}

//Create a function that shows the percentage of pass and fail for a given number of students. For example,say, there are a total of 50 students.
// Among them 29 passed and 21 failed. So the input for the function will be : 50, 29, 21 and output: “Pass: 58%, Fail: 42%

String passfailpercentence(int student, int pass, int fail) {
  var passed = (pass * 100) / student;
  var failed = 100 - passed;

  return "Pass: $passed%, $failed%";
}

void main() {
  print(getResultStatus(60));
  print(cubicSum(3));
  print(average(5, 10, 15));
  print(circleArea(5));
  print(cubbArea(2));
  print(cubbArea(2));
  print(hourToSec(2));
  var cal = celToFehr(20);
  print("$cal (F)");

  var suM = sumn([2, 4, 5, 3, 6]);
  print(suM);

  print(check("Shuvo"));

  print(month(8));

  var totalStudent = passfailpercentence(50, 29, 21);
  print(totalStudent);
}
