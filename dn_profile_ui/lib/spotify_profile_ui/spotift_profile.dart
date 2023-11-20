import 'package:flutter/material.dart';

class SpotifyProfile extends StatefulWidget {
  const SpotifyProfile({super.key});

  @override
  State<SpotifyProfile> createState() => _SpotifyProfileState();
}

class _SpotifyProfileState extends State<SpotifyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(70)),
                    child: const Center(
                        child: Text(
                      "D",
                      style: TextStyle(fontSize: 42),
                    )),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Column(
                    children: [
                      Text(
                        "Dinesh Nagarajan",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text("0"),
                          SizedBox(
                            width: 4,
                          ),
                          Text("followers"),
                          SizedBox(
                            width: 4,
                          ),
                          Text("5"),
                          SizedBox(
                            width: 4,
                          ),
                          Text("following")
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Text(
                        "Edit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                  const SizedBox(
                    width: 24,
                  ),
                  const Icon(Icons.share),
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Playlist",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              playListContainer("Tamil", "10"),
              const SizedBox(
                height: 8,
              ),
              playListContainer("Telugu", "10"),
              const SizedBox(
                height: 8,
              ),
              playListContainer("Malayalam", "10"),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child: Text(
                        "See all playlists",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))))
            ],
          ),
        ),
      ),
    );
  }

  Row playListContainer(String title, String likeCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: Colors.amber),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Row(
              children: [
                Text(likeCount),
                SizedBox(
                  width: 4,
                ),
                Text("Likes")
              ],
            ),
          ],
        )
      ],
    );
  }
}
