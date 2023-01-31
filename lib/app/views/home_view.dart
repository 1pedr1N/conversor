import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
          width: double.infinity,
          margin: EdgeInsets.only(top: 50),
          child: Image.network(
              'https://st2.depositphotos.com/1185628/11062/v/600/depositphotos_110627010-stock-illustration-currency-converter-exchange-icon.jpg'),
        ),
        Row(
          children: [
            DropdownButton(items: [], onChanged: (value) {}),
            TextField(),
            ElevatedButton(onPressed: () {}, child: Text('Converter'))
          ],
        )
      ]),
    );
  }
}
