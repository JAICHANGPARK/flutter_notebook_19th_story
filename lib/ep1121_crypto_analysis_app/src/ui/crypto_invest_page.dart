import 'package:flutter/material.dart';

class CryptoInvestPage extends StatefulWidget {
  const CryptoInvestPage({Key? key}) : super(key: key);

  @override
  State<CryptoInvestPage> createState() => _CryptoInvestPageState();
}

class _CryptoInvestPageState extends State<CryptoInvestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Invest"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
          ),
        ],
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.arrow_back_ios),),
      ),
    );
  }
}
