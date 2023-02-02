// ignore_for_file: no_logic_in_create_state, unused_element, non_constant_identifier_names

import 'package:conversor/app/components/currency_box.dart';
import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  late HomeController homeController;
  final TextEditingController fromText = TextEditingController();
  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            CurrencyBox(
              items: [homeController.currencies[0]],
              onChanged: (model) {
                setState(() {
                  homeController.toCurrency = model!;
                });
              },
              controller: homeController.toText,
              selectedItem: homeController.toCurrency,
            ),
            const SizedBox(
              height: 20,
            ),
            CurrencyBox(
              items: [homeController.currencies[1]],
              onChanged: (model) {
                setState(() {
                  homeController.toCurrency = model!;
                });
              },
              controller: homeController.fromText,
              selectedItem: homeController.fromCurrency,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  homeController.convert();
                },
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
