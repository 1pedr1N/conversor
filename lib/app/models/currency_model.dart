class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double btc;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.btc});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, btc: 0.000004),
      CurrencyModel(
          name: 'Dolar', real: 5.56, dolar: 1.0, euro: 0.84, btc: 0.000023),
      CurrencyModel(
          name: 'Euro', real: 6.66, dolar: 1.19, euro: 1.0, btc: 0.000027),
      CurrencyModel(
          name: 'Bitcoin',
          real: 250000.0,
          dolar: 43.000,
          euro: 37.000,
          btc: 1.0),
    ];
  }
}
