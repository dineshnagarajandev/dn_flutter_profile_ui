import 'package:dn_profile_ui/bookmyshow_profile_ui/bookmyshow_profile.dart';
import 'package:dn_profile_ui/facebook_profile_ui/facebook_profile.dart';
import 'package:dn_profile_ui/instagram_profile_ui/instagram_profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var profileList = ["Facebook", "Instagram", "BookMyShow"];
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
          itemCount: profileList.length,
          itemBuilder: ((context, index) {
            return Container(
                decoration: const BoxDecoration(),
                height: 40,
                width: double.infinity,
                child: InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          // Facebook
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const FacebookProfileUI();
                          }));
                          break;
                        case 1:
                          // Instagram
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const InstagramProfileUI();
                          }));
                          break;
                        case 2:
                          // BookMyShow
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const BookMyShowProfileUI();
                          }));
                          break;
                        default:
                          break;
                      }
                    },
                    child: Center(child: Text(profileList[index]))));
          })),
    );
  }
}
