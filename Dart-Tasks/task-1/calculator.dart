import 'dart:async';
import 'dart:io';
import 'dart:math';

class Calculator {
  // Addition
  double add(double a, double b) => a + b;

  // Subtraction
  double subtract(double a, double b) => a - b;

  // Multiplication
  double multiply(double a, double b) => a * b;

  // Division with exception handling
  double divide(double a, double b) {
    if (b == 0) {
      throw Exception("Error: Division by zero is not allowed.");
    }
    return a / b;
  }

  // Power
  double power(double a, double b) => pow(a, b).toDouble();

  // Modulus
  double modulus(double a, double b) => a % b;

  // Calculate based on user input
  Future<void> calculate(double num1, double num2, String operator) async {
    double result;
    try {
      switch (operator) {
        case '+':
          result = add(num1, num2);
          break;
        case '-':
          result = subtract(num1, num2);
          break;
        case '*':
          result = multiply(num1, num2);
          break;
        case '/':
          result = divide(num1, num2);
          break;
        case '%':
          result = modulus(num1, num2);
          break;
        case '^':
          result = power(num1, num2);
          break;
        default:
          print("Error: Unsupported operator. Use +, -, *, /, %, ^.");
          return;
      }
      // Delay the result output by 5 seconds.
      print("\nCalculating...");
      await Future.delayed(Duration(seconds: 5));
      // Display result
      print("Result: $num1 $operator $num2 = $result\n");
    } catch (e) {
      print("Error: ${e.toString()}");
    }
  }
}

// **Fixed main function:**
Future<void> main() async {
  Calculator cal = Calculator();

  while (true) {
    try {
      // Get first number
      stdout.write("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);
      // Get operator
      stdout.write("Enter operator (+, -, *, /, %, ^): ");
      String operator = stdin.readLineSync()!;
      // Get second number
      stdout.write("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);
      // **Await the asynchronous method**
      await cal.calculate(num1, num2, operator);
    } catch (e) {
      print("Invalid input. Please enter numeric values.");
    }
    // Ask user if they want another calculation
    stdout.write("\nDo you want to perform another calculation? (yes/no): ");
    String? choice = stdin.readLineSync();
    if (choice == null || choice.toLowerCase() != 'yes') {
      print("Exiting calculator. Goodbye!");
      break;
    }
  }
}
