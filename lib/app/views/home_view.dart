import 'package:conversor/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                'https://st2.depositphotos.com/1185628/11062/v/600/depositphotos_110627010-stock-illustration-currency-converter-exchange-icon.jpg',
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const CurrencyBox(),
            const SizedBox(
              height: 20,
            ),
            const CurrencyBox(),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                child: const Text('Converter'))
          ]),
        ),
      ),
    );
  }
}
