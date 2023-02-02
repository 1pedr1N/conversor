import 'package:flutter/widgets.dart';

import '../models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;
  late TextEditingController toText = TextEditingController();
  late TextEditingController fromText = TextEditingController();
  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;
    if (fromCurrency.name == 'Real') {
      returnValue = (value * toCurrency.real);
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = (value * toCurrency.dolar);
    } else if (fromCurrency.name == 'Euro') {
      returnValue = (value * toCurrency.euro);
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = (value * toCurrency.btc);
    }
  }
}