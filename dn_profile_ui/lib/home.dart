import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Profile's UI"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
                decoration: const BoxDecoration(),
                height: 40,
                width: double.infinity,
                child: InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          break;
                        default:
                          break;
                      }
                    },
                    child: Center(child: Text("index $index"))));
          })),
    );
  }
}
