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
      backgroundColor: Colors.white,
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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            Container(
              height: 72,

              decoration: BoxDecoration(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
