import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;
  final CurrencyModel selectedItem;
  const CurrencyBox(
      {Key? key,
      required this.items,
      required this.controller,
      required this.onChanged,
      required this.selectedItem})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_literals_to_create_immutables
        Expanded(
            child: SizedBox(
                height: 56,
                child: DropdownButton<CurrencyModel>(
                  isExpanded: true,
                  value: selectedItem,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: items
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e.name,
                            style: const TextStyle(color: Colors.amber),
                          )))
                      .toList(),
                  onChanged: onChanged,
                ))),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
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
