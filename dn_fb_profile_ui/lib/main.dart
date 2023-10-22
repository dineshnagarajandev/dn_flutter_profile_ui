import 'package:dn_fb_profile_ui/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Profile UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: backGroundColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Facebook Profile UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
// EFF1F4 - bg color HEXADECIMAL code
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var boardHeight = 510.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: backGroundColor),
          child: Column(
            children: [
              getSizedBox(height: 60),
              topMenuWithSearch(),
              userInfoAndAccountSwitchOptions(),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: boardHeight,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: backGroundColor),
                  child: (boardHeight == 510)
                      ? columWithFourRows(context)
                      : columWithSevenRows(context),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  print("DN: Help & Support");
                },
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      getSizedBox(width: 12),
                      const Icon(
                        Icons.help,
                        color: Colors.grey,
                        size: 40,
                      ),
                      getSizedBox(width: 12),
                      const Text(
                        "Help & Support",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      getSpacerWidget(),
                      const Icon(
                        Icons.arrow_circle_down,
                        size: 30,
                      ),
                      getSizedBox(width: 12),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  print("DN: Settings & Privacy tapped");
                },
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      getSizedBox(width: 12),
                      const Icon(
                        Icons.settings,
                        color: Colors.grey,
                        size: 40,
                      ),
                      getSizedBox(width: 12),
                      const Text(
                        "Settings & Privacy",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      getSpacerWidget(),
                      const Icon(
                        Icons.arrow_circle_down,
                        size: 30,
                      ),
                      getSizedBox(width: 12),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  print("DN: Also from Meta tapped");
                },
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      getSizedBox(width: 12),
                      const Icon(
                        Icons.apps,
                        color: Colors.grey,
                        size: 40,
                      ),
                      getSizedBox(width: 12),
                      const Text(
                        "Also from Meta",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      getSpacerWidget(),
                      const Icon(
                        Icons.arrow_circle_down,
                        size: 30,
                      ),
                      getSizedBox(width: 12),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              getSizedBox(height: 24)
            ],
          ),
        ),
      ),
    );
  }

  Column columWithSevenRows(BuildContext context) {
    return Column(
      children: [
        optionsRow(
          context,
          "Friends",
          Icons.group,
          "Memories",
          Icons.av_timer,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Saved",
          Icons.bookmark,
          "Groups",
          Icons.group_add_rounded,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Video",
          Icons.video_chat,
          "Marketplace",
          Icons.shop,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Feeds",
          Icons.feed,
          "Events",
          Icons.event,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Avatars",
          Icons.toys,
          "Fantasy games",
          Icons.games,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Gaming",
          Icons.gamepad,
          "Messenger Kids",
          Icons.message,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Pages",
          Icons.video_stable,
          "Reels",
          Icons.flag,
        ),
        getSizedBox(height: 24),
        getSpacerWidget(),
        InkWell(
          onTap: () {
            setState(() {
              if (boardHeight == 510) {
                boardHeight = 850;
              } else {
                boardHeight = 510;
              }
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: iconBackGroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "See more",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column columWithFourRows(BuildContext context) {
    return Column(
      children: [
        optionsRow(
          context,
          "Friends",
          Icons.group,
          "Memories",
          Icons.av_timer,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Saved",
          Icons.bookmark,
          "Groups",
          Icons.group_add_rounded,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Video",
          Icons.video_chat,
          "Marketplace",
          Icons.shop,
        ),
        getSizedBox(height: 12),
        optionsRow(
          context,
          "Feeds",
          Icons.feed,
          "Events",
          Icons.event,
        ),
        getSizedBox(height: 24),
        getSpacerWidget(),
        InkWell(
          onTap: () {
            setState(() {
              if (boardHeight == 510) {
                boardHeight = 850;
              } else {
                boardHeight = 510;
              }
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: iconBackGroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "See more",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }

  Row optionsRow(BuildContext context, String rowOneTitle, IconData rowOneIcon,
      String rowTwoTitle, IconData rowTwoIcon) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            print("DN: $rowOneTitle tapped");
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 16,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSpacerWidget(),
                Row(
                  children: [
                    getSizedBox(width: 8),
                    Icon(
                      rowOneIcon,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  ],
                ),
                getSizedBox(height: 12),
                Row(
                  children: [
                    getSizedBox(width: 8),
                    Text(
                      rowOneTitle,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                getSpacerWidget()
              ],
            ),
          ),
        ),
        getSizedBox(width: 8),
        InkWell(
          onTap: () {
            print("DN: $rowTwoTitle tapped");
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 16,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSpacerWidget(),
                Row(
                  children: [
                    getSizedBox(width: 8),
                    Icon(
                      rowTwoIcon,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  ],
                ),
                getSizedBox(height: 12),
                Row(
                  children: [
                    getSizedBox(width: 8),
                    Text(
                      rowTwoTitle,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                getSpacerWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container userInfoAndAccountSwitchOptions() {
    return Container(
      height: 120,
      decoration: const BoxDecoration(color: backGroundColor),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              getSizedBox(width: 12),
              InkWell(
                onTap: () {
                  print("DN: profile image tapped");
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: iconBackGroundColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.black,
                  ),
                ),
              ),
              getSizedBox(width: 8),
              const Text(
                "Dinesh Nagarajan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              getSpacerWidget(),
              Container(
                decoration: BoxDecoration(
                    color: iconBackGroundColor,
                    borderRadius: BorderRadiusDirectional.circular(25)),
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      print("DN: Switch account tapped");
                    },
                    icon: const Icon(
                      Icons.sync,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: iconBackGroundColor,
                      borderRadius: BorderRadiusDirectional.circular(25)),
                  child: IconButton(
                      iconSize: 30,
                      onPressed: () {
                        print("DN: Account center down arrow tapped");
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Colors.black,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row topMenuWithSearch() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12, bottom: 24),
          child: Text(
            "Menu",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        getSpacerWidget(),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0, right: 12.0),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: iconBackGroundColor,
                borderRadius: BorderRadius.circular(25)),
            child: IconButton(
                onPressed: () {
                  print("DN: Search icon tapped");
                },
                icon: const Icon(
                  Icons.search,
                  size: 25,
                )),
          ),
        )
      ],
    );
  }
}
