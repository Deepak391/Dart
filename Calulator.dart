import 'dart:io';

List<String> history = [];

class Calculator {
  addition(num a, num b) {
    return a + b;
  }

  division(num a, num b) {
    return a / b;
  }

  subtraction(num a, num b) {
    return a - b;
  }

  multiplication(num a, num b) {
    return a * b;
  }
}

void printhis() {
  print('\n History \n');
  num len = history.length;
  for (int i = 0; i < len; i++) {
    print(history[i]);
  }
}

void main() {
  num x, m, x1 = 0, x2 = 0;
  String his;
  Calculator c = new Calculator();
  print(
      'Calculator \n 1. Addition \n 2. Division \n 3. Subtraction \n 4. Multiplication \n 5. History \n 0. Exit. ');

  do {
    print('Enter your choice (1,2,3,4,5) respectively : ');
    x = num.parse(stdin.readLineSync()!);
    if (x == 5) {
      printhis();
    } else if (x > 0 && x < 6) {
      print('Enter First number :');
      x1 = num.parse(stdin.readLineSync()!);
      print('Enter Second number :');
      x2 = num.parse(stdin.readLineSync()!);
    } else if (x == 0) {
      print('Exiting Calcualtor...');
      break;
    } else {
      print('Error Unknow option');
    }
    switch (x) {
      case 1:
        m = c.addition(x1, x2);
        print("Sum of $x1 and $x2 is : $m \n");
        his = '$x1 + $x2 = $m';
        history.add(his);
        break;
      case 2:
        if (x2 == 0) {
          print('Error cant dived by Zero \n');
        } else {
          m = c.division(x1, x2);
          print('Division of $x1 and $x2 is : $m \n');
          his = '$x1 / $x2 = $m';
          history.add(his);
        }

        break;
      case 3:
        m = c.subtraction(x1, x2);
        print('Substraction of $x1 and $x2 is : $m \n ');
        his = '$x1 - $x2 = $m';
        history.add(his);
        break;
      case 4:
        m = c.multiplication(x1, x2);
        print('Multiplication of $x1 and $x2 is : $m \n');
        his = '$x1 X $x2 = $m';
        history.add(his);
        break;
      case 5:
        print('\n End of History \n');
        break;
    }
  } while (true);
}
