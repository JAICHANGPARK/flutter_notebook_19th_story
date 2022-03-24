import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1101_mail_inbox_app/src/provider/inbox_loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainInboxHomePage extends StatefulWidget {
  const MainInboxHomePage({Key? key}) : super(key: key);

  @override
  State<MainInboxHomePage> createState() => _MainInboxHomePageState();
}

class _MainInboxHomePageState extends State<MainInboxHomePage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                    const Expanded(
                        child: Center(
                      child: Text(
                        "Inbox (122)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[300],
            ),
            Expanded(
              child: Consumer(builder: (context, ref, _) {
                final inbox = ref.watch(inboxLoader);
                return inbox.when(
                    data: (items) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Container(
                              height: 82,
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              items[index].title ?? "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                            (items[index].isNew ?? false)
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        "New",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Container(),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 12),
                                          child: Text(
                                            items[index].subtitle ?? "",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          items[index].overlayText ?? "",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(items[index].time ?? "--:--"),
                                      (items[index].isFavorite ?? false)
                                          ? const Icon(
                                              Icons.star,
                                        size: 18,
                                            )
                                          : const Icon(
                                              Icons.star_border,
                                        size: 18,
                                            )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, _) => const Divider(),
                          itemCount: items.length,
                        ),
                      );
                    },
                    error: (err, stack) {
                      return Center(
                        child: Text("$err $stack"),
                      );
                    },
                    loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ));
                return ListView(
                  children: [],
                );
              }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.email_outlined),
      ),
    );
  }
}
