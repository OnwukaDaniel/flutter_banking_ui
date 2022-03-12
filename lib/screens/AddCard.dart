import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  static const colorRadiusSize = 19.00;
  var cvv = "000";
  var month = "000";
  var year = "000";
  var cardNumber = "3489 2238 9332 9083";
  var cardExpiryDate = "02/12";
  var cardHolderName = "CardHolderName";
  TextEditingController? controller;

  static const List<Widget> colors = [
    CircleAvatar(backgroundColor: Colors.black, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black54, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black45, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black26, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black12, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.cyan, radius: colorRadiusSize),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.00),
          child: ListView(
            children: [
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.blue[900]),
                  const Text(
                    "Add Card",
                    style: TextStyle(color: Colors.black, fontSize: 23.0),
                  ),
                  const Spacer(),
                  Icon(Icons.qr_code, color: Colors.blue[900])
                ],
              ),
              const SizedBox(height: 5.0),
              const SizedBox(height: 20.0),
              CreditCardWidget(
                onCreditCardWidgetChange: (CreditCardBrand) {},
                cardNumber: cardNumber,
                cvvCode: cvv,
                showBackView: false,
                expiryDate: "$month/$year",
                cardHolderName: cardHolderName,
              ),
              const Text("Pick Color", style: TextStyle(color: Colors.black)),
              const SizedBox(height: 10.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: colors),
              const SizedBox(height: 10.0),
              const Divider(height: 5.00, color: Colors.grey),
              const SizedBox(height: 10.0),
              Row(children: const [
                Text("Card Number", style: TextStyle(color: Colors.black))
              ]),
              TextField(
                controller: controller,
                onChanged: (txt) {
                  cardNumber = txt;
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: "3344 2143 4533 5152",
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Month"),
                        TextField(
                          onChanged: (txt) {
                            month = txt;
                            setState(() {});
                          },
                          decoration: const InputDecoration(
                            hintText: "06",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Year"),
                        TextField(
                          onChanged: (txt) {
                            year = txt;
                            setState(() {});
                          },
                          decoration: const InputDecoration(
                            hintText: "06",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (check) {}),
                  const Text("Remember this card details"),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.blue[900])),
                child: const Text("Add card", textAlign: TextAlign.center),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  static const colorRadiusSize = 19.00;
  var cvv = "000";
  var cardNumber = "3489 2238 9332 9083";
  var cardExpiryDate = "";
  var cardHolderName = "CardHolderName";

  static const List<Widget> colors = [
    CircleAvatar(backgroundColor: Colors.black, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black54, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black45, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black26, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.black12, radius: colorRadiusSize),
    CircleAvatar(backgroundColor: Colors.cyan, radius: colorRadiusSize),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.00),
        child: ListView(
          children: [
            const SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.blue[900]),
                const Text(
                  "Add Card",
                  style: TextStyle(color: Colors.black, fontSize: 23.0),
                ),
                const Spacer(),
                Icon(Icons.qr_code, color: Colors.blue[900])
              ],
            ),
            const SizedBox(height: 5.0),
            const SizedBox(height: 20.0),
            CreditCardWidget(
              onCreditCardWidgetChange: (CreditCardBrand) {},
              cardNumber: cardNumber,
              cvvCode: cvv,
              showBackView: false,
              expiryDate: cardExpiryDate,
              cardHolderName: cardHolderName,
            ),
            const Text("Pick Color", style: TextStyle(color: Colors.black)),
            const SizedBox(height: 10.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: colors),
            const SizedBox(height: 10.0),
            const Divider(height: 5.00, color: Colors.grey),
            const SizedBox(height: 10.0),
            Row(children: const [
              Text("Card Number", style: TextStyle(color: Colors.black))
            ]),
            TextField(
              onChanged: (txt) {
                cardNumber = txt;
              },
              decoration: InputDecoration(
                hintText: "3344 2143 4533 5152",
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Month"),
                      TextField(
                        onChanged: (txt) {},
                        decoration: const InputDecoration(
                          hintText: "06",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Year"),
                      TextField(
                        onChanged: (txt) {},
                        decoration: const InputDecoration(
                          hintText: "06",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (check) {}),
                const Text("Remember this card details"),
              ],
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[900])),
              child: const Text("Add card", textAlign: TextAlign.center),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}