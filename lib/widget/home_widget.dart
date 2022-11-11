import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController title = TextEditingController();
    final TextEditingController detail = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            padding: const EdgeInsets.all(8),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(200, 220, 70, 70),
            ),
            child: Center(
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                controller: title,
                decoration: const InputDecoration(
                    labelText: "Title",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          const Gap(20),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            padding: const EdgeInsets.all(8),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(200, 220, 70, 70),
            ),
            child: Center(
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                controller: detail,
                decoration: const InputDecoration(
                    labelText: "Details",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          const Gap(20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(200, 220, 70, 70)),
            child: const Text(
              "Add Todo",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
