import 'package:flutter/material.dart';

class InstagramProfileUI extends StatefulWidget {
  const InstagramProfileUI({super.key});

  @override
  State<InstagramProfileUI> createState() => _InstagramProfileUIState();
}

class _InstagramProfileUIState extends State<InstagramProfileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  floating: true,
                  pinned: true,
                  bottom: const TabBar(
                    dividerColor: Colors.black,
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_4x4_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      Tab(icon: Icon(Icons.video_file, color: Colors.grey)),
                      Tab(
                        icon: Icon(Icons.people_alt, color: Colors.grey),
                      ),
                    ],
                  ),
                  expandedHeight: 320,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 24, bottom: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          onLongPress: () {
                                            print("DN: option to photo");
                                          },
                                          onTap: () {
                                            print("DN: update image");
                                          },
                                          child: Stack(children: [
                                            Container(
                                              width: 80,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              child: const Icon(
                                                Icons.person,
                                                size: 50,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Positioned(
                                              right: 5.0,
                                              bottom: 2,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.black),
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ]),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Dinesh Nagarajan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: InkWell(
                                          onTap: () {
                                            print("DK: Post tapped.");
                                          },
                                          child: profileInfos("30", "Post")),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: InkWell(
                                          onTap: () {
                                            print("DK: Followers tapped.");
                                          },
                                          child:
                                              profileInfos("30", "Followers")),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                        onTap: () {
                                          print("DK: Following tapped.");
                                        },
                                        child:
                                            profileInfos("120", "Following")),
                                    const Spacer(),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 30,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF262626),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Icon(
                                          Icons.email,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("dineshnagarajan.dev",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 60,
                                  width: 500,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF262626),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Professional dashboard",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "1.1K account reached in the last 30 days.",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF262626),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Center(
                                          child: Text(
                                            "Edit profile",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF262626),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Center(
                                          child: Text(
                                            "Share profile",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ), // This is where you build the profile part
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("DN: index $index");
                      },
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        color: Colors.lightBlue,
                        child: Text(
                          '$index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 10,
                  addSemanticIndexes: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("DN: index $index");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.amber,
                        child: Text(
                          '$index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print("DN: index $index");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey,
                        child: Text(
                          '$index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column profileInfos(String columnOneText, String columnTwoText) {
    return Column(
      children: [
        Text(
          columnOneText,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          columnTwoText,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
        )
      ],
    );
  }

  AppBar getAppBar() {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.black,
      flexibleSpace: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 24),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      print("DN: Profile name tapped.");
                    },
                    child: Row(
                      children: [
                        const Text(
                          "dineshnagarajan.dev",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Icon(Icons.arrow_drop_down, color: Colors.grey),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      print("DN: add tapped");
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.white)),
                        child: const Icon(Icons.add, color: Colors.white)),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  InkWell(
                    onTap: () {
                      print("DN: menu tapped");
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
