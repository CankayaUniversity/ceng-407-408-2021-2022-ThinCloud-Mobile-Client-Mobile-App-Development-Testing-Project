// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:thincloud/Constants.dart';
import 'package:thincloud/walletScreen.dart';

class Kartekle extends StatefulWidget {
  const Kartekle({Key? key}) : super(key: key);

  @override
  _KartekleState createState() => _KartekleState();
}

class _KartekleState extends State<Kartekle> {
  bool showBack = false;

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('thincloud'),
        backgroundColor: const Color.fromARGB(
          255,
          132,
          183,
          220,
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(children: [
          CreditCard(
            cardNumber: cardNumber,
            cardExpiry: expiryDate,
            cardHolderName: cardHolderName,
            cvv: cvv,
            bankName: '',
            showBackSide: showBack,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            showShadow: true,
            // mask: getCardTypeMask(cardType: CardType.americanExpress),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(
                // height: 40,
                //),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Kart Numarası'),
                        maxLength: 16,
                        onChanged: (value) {
                          setState(() {
                            cardNumber = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: 'SKT.'),
                        maxLength: 5,
                        onChanged: (value) {
                          setState(() {
                            expiryDate = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Kart Üzerindeki İsim'),
                        onChanged: (value) {
                          setState(() {
                            cardHolderName = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: 'CVV'),
                        maxLength: 3,
                        onChanged: (value) {
                          setState(() {
                            cvv = value;
                          });
                        },
                        focusNode: _focusNode,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //if (cardNumber == '') {}
                        kartlarim1 = cardNumber;
                        sonkullanmatarihkart = expiryDate;
                        cvv1 = cvv;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WalletScreen()),
                        );
                        /* Future pushNamed =
                            Navigator.of(context).popAndPushNamed("/");
                        pushNamed.then((_) => setState(() {}));*/
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 79, 166, 192),
                      ),
                      child: const Text('Kartı Kaydet'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
