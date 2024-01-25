import 'package:intl/intl.dart';

class FormatPrice {
  NumberFormat getFormatPrice() {
    NumberFormat format = NumberFormat.simpleCurrency(
      name: "RUB",
      decimalDigits: 0,
      locale: "ru-RU",
    );
    return format;
  }
}
