import 'package:intl/intl.dart';

class FormatNumbers {
  static String formatNumber(double number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }
}
