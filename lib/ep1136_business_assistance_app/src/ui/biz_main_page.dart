import 'package:flutter/material.dart';

class BizMainPage extends StatefulWidget {
  const BizMainPage({Key? key}) : super(key: key);

  @override
  State<BizMainPage> createState() => _BizMainPageState();
}

class _BizMainPageState extends State<BizMainPage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.menu),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Company finance",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: TabBar(
                  controller: tabController,
                  tabs: [
                    Tab(text: ,)
                  ],
                ),
              ),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
