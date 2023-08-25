import 'dart:math';

class PrimeChecker {
  static bool isPrime(int number) {
    if (number == 1) return true;

    for (var element = 2; element <= sqrt(number); element++) {
      if (number % element == 0) return false;
    }

    return true;
  }
}
