import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1114_e_commerce_filters_app/src/model/shop_results.dart';
import 'package:flutter_notebook_19th_story/ep1114_e_commerce_filters_app/src/provider/shop_result_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_notebook_19th_story/ep1114_e_commerce_filters_app/src/provider/shop_result_provider.dart';

class EcommerceHomePage extends StatelessWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Results for \"Mackbook\""),
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_bag,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 72,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.unfold_more),
                        const Text("Sort by"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.filter_list),
                        const Text("Filter"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer(builder: (context, ref, _) {
                AsyncValue<List<ShopResult>> items = ref.watch(shopResultProvider);
                return items.when(data: (datas){
                  return GridView.builder(
                    itemCount: 10,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 5 / 6,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                      );
                    },
                  );
                }, error: (e, s){
                  return Center(
                    child: Text("$e, $s"),
                  );
                }, loading: ()=> Center(
                  child: CircularProgressIndicator(),
                ));

              }),
            ),
          )
        ],
      ),
    );
  }
}
