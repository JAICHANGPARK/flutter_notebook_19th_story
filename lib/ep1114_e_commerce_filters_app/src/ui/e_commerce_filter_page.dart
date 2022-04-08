import 'package:flutter/material.dart';

class ECommerceFilterPage extends StatefulWidget {
  const ECommerceFilterPage({Key? key}) : super(key: key);

  @override
  State<ECommerceFilterPage> createState() => _ECommerceFilterPageState();
}

class _ECommerceFilterPageState extends State<ECommerceFilterPage> {
  var _tmp = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Reset"),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        ],
        title: Text("Filter"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 16),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Brand",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 16),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
            SizedBox(
              child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 6,
                spacing: 6,
                children: [
                  InputChip(
                    label: Text("Ardell"),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    isEnabled: true,
                    disabledColor: Colors.grey,
                    selectedColor: Colors.black,
                    deleteIcon: Icon(
                      Icons.check,
                      size: 14,
                    ),
                    deleteIconColor: Colors.white,
                    onDeleted: () {
                      print("onDeleted");
                    },
                    onSelected: (b) {
                      print("onSelected");
                      setState(() {});
                    },
                    selected: _tmp[0],
                  ),
                  InputChip(
                    label: Text("bareMinerals"),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    isEnabled: true,
                    disabledColor: Colors.grey,
                    selectedColor: Colors.black,
                    deleteIcon: Icon(
                      Icons.check,
                      size: 14,
                    ),
                    deleteIconColor: Colors.white,
                    onDeleted: () {
                      print("delete");
                    },
                    onSelected: (b) {
                      print("b");
                      setState(() {});
                    },
                    selected: _tmp[1],
                  ),
                  InputChip(
                    label: Text("Clate"),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    isEnabled: true,
                    disabledColor: Colors.grey,
                    selectedColor: Colors.black,
                    deleteIcon: Icon(
                      Icons.check,
                      size: 14,
                    ),
                    deleteIconColor: Colors.white,
                    onDeleted: () {
                      print("onDeleted");
                    },
                    onSelected: (b) {
                      print("onSelected");
                      setState(() {});
                    },
                    selected: _tmp[2],
                  )
                ],
              ),
            ),
            ExpansionTile(
              title: Text("Color"),
              initiallyExpanded: true,
              children: [
                SizedBox(
                  height: 64,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: InputChip(
                              label: Text(
                                "Gray",
                              ),
                              selectedColor: Colors.black,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.black,
                              avatar: CircleAvatar(
                                backgroundColor: Colors.grey,
                              ),
                              onSelected: (s) {},
                              onDeleted: () {},
                              deleteIconColor: Colors.white,
                            ),
                          );
                        }
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ChoiceChip(
                            label: Text("Black"),
                            selected: false,
                            avatar: CircleAvatar(
                              backgroundColor: Colors.black,
                            ),
                            shape: StadiumBorder(side: BorderSide()),
                            backgroundColor: Colors.transparent,
                            onSelected: (b) {},
                          ),
                        );
                      }),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Price Range"),
              trailing: Text("\$${rangeValue.start.toStringAsFixed(0)}-${rangeValue.end.toStringAsFixed(0)}"),
              initiallyExpanded: true,
              children: [RangeSlider(
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,
                  min: 0, max: 300, values: rangeValue, onChanged: (s) {
                setState((){
                  rangeValue = s;
                });

              })],
            ),
          ],
        ),
      ),
    );
  }

  RangeValues rangeValue = RangeValues(0.0, 300);
}
