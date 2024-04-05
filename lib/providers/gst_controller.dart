import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class GSTController extends ChangeNotifier {
  String _input = '';
  double _output = 0.0;
  String _operator = '';
  double _totalGSTAmount = 0.0;
  double _cGST = 0.0;
  double _totalAmount = 0.0;
  double _netPrice = 0.0;

  String get input => _input;
  double get output => _output;
  String get operator => _operator;
  double get totalGSTAmount => _totalGSTAmount;
  double get cGST => _cGST;
  double get totalAmount => _totalAmount;
  double get netPrice => _netPrice;

  void onButtonPress(String value) {
    if (value == 'C') {
      if (_input.isNotEmpty) {
        _input = _input.substring(0, _input.length - 1);
      }
    } else {
      if (value == '+' || value == '-' || value == '×' || value == '/') {
        // Check if the last character in input is also an operator
        if (_input.isNotEmpty &&
            (_input.endsWith('+') ||
                _input.endsWith('-') ||
                _input.endsWith('×') ||
                _input.endsWith('/'))) {
          // Remove the last operator
          _input = _input.substring(0, _input.length - 1);
        }
      }
      _input += value;
    }
    notifyListeners(); // Notify listeners after updating the input
  }

  void additionGST(int percentage) {
    if (_input.isNotEmpty) {
      var userInput = _input;
      userInput = userInput.replaceAll('×', '*');
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalValue = expression.evaluate(EvaluationType.REAL, cm);
      _output = finalValue;
      _totalGSTAmount = (_output * percentage) / 100;
      _cGST = _totalGSTAmount / 2;
      _totalAmount = _output + _totalGSTAmount;
      notifyListeners(); // Notify listeners after updating the output and other variables
    }
  }

  void subtractionGST(int percentage) {
    if (_input.isNotEmpty) {
      var userInput = _input;
      userInput = userInput.replaceAll('×', '*');
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalValue = expression.evaluate(EvaluationType.REAL, cm);
      _output = finalValue;
      _netPrice = (_output/(1+percentage/100));
      _totalGSTAmount = (_output - _netPrice);
      _cGST = _totalGSTAmount / 2;
      notifyListeners(); // Notify listeners after updating the output and other variables
    }
  }

  void resetValues() {
    _input = '';
    _output = 0.0;
    notifyListeners(); // Notify listeners after resetting the values
  }
}
