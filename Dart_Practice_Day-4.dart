// num getDistance([
//   velocity = 0,
//   time = 0,
//   initialvelocity = 0,
// ]) {
//   int u = initialvelocity * 100;
//   int t = time * 60;
//   int v = velocity * 100;
//   double acceleration = (v - u) / t;
//   double distance = (u * t) + (0.5 * acceleration * t * t);
//
//   return distance / 10000;
// }

//Create a function register which takes arguments as follows:
// firstName, lastName, email, password and confirmPassword.
// All arguments are Named Optional, but email, password and confirmPassword are required.
// Return “Successful” if email is not empty and password and confirmPassword both match,
// otherwise, return “Failed to register”.

getRegister({
  required email,
  required password,
  required confirm_password,
  firstName = "Not Insert",
  lastName = "Not Insert",
}) {
  if (password == confirm_password) {
    return "First Name = $firstName\nLast Name = $lastName\nEmail = $email\nPassword = $password\n\nStatus : Registed Successful";
  }
  return "Failed to Register";
}

//Create a function getSalary that takes two required Named arguments:
// (empName, baseSalary), two Named optional arguments (grossSale, allowance).
// Calculate the salary and return.
// Example, salary = baseSalary + (grossSale * 0.05) + allowance.

calculateSalary(
    {required empName, required basicSalary, grossSale = 0, allowance = 0}) {
  num salary = basicSalary + (grossSale * .05) + allowance;

  return "Employee Name = $empName\nSalary = $salary";
}

//Create a function getColor that takes 3 boolean Named Optional required arguments:
// red, green, blue. The combination of these colors (RGB) (if present) is as follows:
// True, True, True): White
// (True, True, False): Yellow
// (True, False, True): Magenta
// (False, True, True): Cyan
// (True, False, False): Red
// (False, True, False): Green
// (False, False, True): Blue
// 	For example, if red is true, green is true and blue is true, output is White.
// 	Return output color name as String.

getcolor({required bool red, required bool green, required bool blue}) {
  if (red == true && green == true && blue == true) return "White";
  if (red == true && green == true && blue == false) return "Yellow";
  if (red == true && green == false && blue == true) return "Magenta";
  if (red == false && green == true && blue == true) return "Cyan";
  if (red == true && green == false && blue == false) return "Red";
  if (red == false && green == true && blue == false) return "Green";
  if (red == false && green == false && blue == true)
    return "Blue";
  else
    return "Black";
}

//Create a function lambdaTest that takes:
// Another function fn as argument
// fn takes an argument of type String
// Call fn within the lambdaTest function body and pass “I hate Function”.
// Inside main(), call lambdaTest and pass the function anonymously.
// Print the value that the anonymous function receives.

lambdaTest(Function(String) fn) {
  fn("I hate function");
}

void main() {
  List<String> nlist = [
    "dhaka",
    "khulna",
    "barishal",
    "rangpur",
    "syhlet",
    "nandina",
    "sherpur",
    "laskmipur"
  ];

  makeCityUppercase(nlist, (city) {
    print(city.toUpperCase());
  });

  lambdaTest((String value) {
    print(value);
  });

  print(getcolor(red: false, green: true, blue: true));

  print(calculateSalary(empName: "Tavir", basicSalary: 20000));

  print(getRegister(
      email: " shimu@gmail.com", password: "Pas11", confirm_password: "Pas11"));

  num distance = getDistance(75, 50);
  print("Total Distance = $distance (km)");
}

// Create a function makeCityUppercase that takes a list nList of 10 cities (all in small letter)
// as the first argument and a function fn as the second argument which receives a String (Hint: Function(String) fn).
// Call forEach function on nList and pass fn.
// Within the main(), call makeCityUppercase and pass the list and pass the function as Lambda.
// Output should show all the cities in capital letters.

makeCityUppercase(List<String> nList, Function(String) fn) {
  nList.forEach(fn);
}

// A car travels 75 km in 50 minutes. Create a function speedTest that takes two Positional Optional arguments:
// totalDistance (km) and totalTime (minute). Calculate the distance per hour and return the result.
num getDistance([totalDistance = 0, totalMinitues = 0]) {
  num s = totalDistance * 1000;
  num t = totalMinitues * 60;

  double distance = (s * 3600) / t;
  return distance / 1000;
}
