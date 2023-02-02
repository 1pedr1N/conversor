import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_literals_to_create_immutables
        Expanded(
            child: SizedBox(
                height: 56,
                child: DropdownButton<String>(
                    iconEnabledColor: Colors.amber,
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.amber,
                    ),
                    items: const [
                      DropdownMenuItem(child: Text('Dolar')),
                    ],
                    onChanged: (value) {}))),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            )),
      ],
    );
  }
}
