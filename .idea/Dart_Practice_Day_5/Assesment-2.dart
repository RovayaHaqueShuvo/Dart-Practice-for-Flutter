//Create a class Employee with the following fields: name, department, baseSalary, allowance.
// Add a constructor with all the fields. Use named required arguments.
// Add a method getSalary that returns the salary (baseSalary plus allowance)
// Add a method getFullInfo to print all the employee informations
// From the main function, create at least 2 employee objects and print their full information with salaries.

class Employee {
  String name;
  String department;
  num basicSalary;
  num allowance;

  Employee(
      {required this.name,
      required this.department,
      required this.basicSalary,
      required this.allowance});

  num getSalary() {
    return basicSalary + allowance;
  }

  String getFullInfo(Function fn) {
    return "Name:$name - Department:$department - Salary:${fn()}";
  }
}

void main() {
  Employee sakib = Employee(
      name: "Sakib", department: "Sales", basicSalary: 60000, allowance: 200);
  Employee rakib = Employee(
      name: "Rakib", department: "Sales", basicSalary: 10000, allowance: 1600);

  print(sakib.getFullInfo(sakib.getSalary));
  print(rakib.getFullInfo(rakib.getSalary));
}
