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
              const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                'https://st2.depositphotos.com/1185628/11062/v/600/depositphotos_110627010-stock-illustration-currency-converter-exchange-icon.jpg',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  Expanded(
                      child: SizedBox(
                          height: 56,
                          child: DropdownButton<String>(
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
              ),
            ),
            const SizedBox(
              height: 30,
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
