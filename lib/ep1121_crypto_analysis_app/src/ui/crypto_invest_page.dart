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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 84,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  "Trade Bitcoin",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
