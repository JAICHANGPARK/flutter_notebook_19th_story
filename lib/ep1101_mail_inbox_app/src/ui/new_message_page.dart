import 'package:flutter/material.dart';
import 'package:flutter_notebook_19th_story/ep1101_mail_inbox_app/src/provider/new_mail_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewMessagePage extends StatefulWidget {
  const NewMessagePage({Key? key}) : super(key: key);

  @override
  State<NewMessagePage> createState() => _NewMessagePageState();
}

class _NewMessagePageState extends State<NewMessagePage> {
  TextEditingController _subjectTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 64,
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.navigate_before,
                    ),
                  ),
                  const Expanded(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "New message",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )),
                  ),
                  IconButton(onPressed: () async{

                  }, icon: const Icon(Icons.send)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
            ),
            const Divider(
              height: 0,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Text("To:"),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        border: Border.all(
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 2,
                      vertical: 2,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "sample@gmail.com",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.clear,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_down,
                  )
                ],
              ),
            ),
            const Divider(
              height: 0,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  const Text("Subject:"),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 32,
                      child: Consumer(builder: (context, ref, _) {
                        final controller = ref.watch(subjectInputProvider);
                        return TextField(
                          controller: controller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }),
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
                padding: const EdgeInsets.all(16.0),
                child: Consumer(builder: (context, ref, _) {
                  final controller = ref.watch(bodyInputProvider);
                  return TextField(
                    controller: controller,
                    showCursor: true,
                    maxLines: 100,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
