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
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        enableDrag: false,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(
                          height: 320,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "SORT BY",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
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
                return items.when(
                    data: (datas) {
                      return GridView.builder(
                        itemCount: datas.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 5 / 8,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: const BoxDecoration(
                                // color: Colors.blue,
                                ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: Image.network(
                                            "${datas[index].img}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          top: 0,
                                          child: Container(
                                            color: (datas[index].isSoldOut ?? false)
                                                ? Colors.black.withOpacity(0.5)
                                                : Colors.transparent,
                                          ),
                                        ),
                                        Positioned(
                                          left: 48,
                                          right: 48,
                                          child: (datas[index].isSoldOut ?? false)
                                              ? Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(4), color: Colors.white),
                                                    child: const Align(
                                                      alignment: Alignment.center,
                                                      child: Text("SOLD OUT"),
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                        ),
                                        Positioned(
                                            right: 2,
                                            top: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: (datas[index].isSoldOut ?? false)
                                                    ? const Icon(
                                                        Icons.notifications_outlined,
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_border,
                                                      ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(text: datas[index].vendor ?? "-"),
                                            TextSpan(
                                              children: [
                                                TextSpan(text: datas[index].name ?? "-"),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text("\$ ${datas[index].price}"),
                                          Text("\$ ${datas[index].price}"),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    error: (e, s) {
                      return Center(
                        child: Text("$e, $s"),
                      );
                    },
                    loading: () => const Center(
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
