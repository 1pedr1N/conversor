import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(
            'https://st2.depositphotos.com/1185628/11062/v/600/depositphotos_110627010-stock-illustration-currency-converter-exchange-icon.jpg')
      ]),
    );
  }
}
