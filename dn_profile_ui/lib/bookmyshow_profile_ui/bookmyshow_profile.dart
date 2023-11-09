import 'package:flutter/material.dart';

class BookMyShowList {
  Icon icon;
  String title;
  String? description;

  BookMyShowList(this.icon, this.title, this.description);
}

class BookMyShowProfileUI extends StatefulWidget {
  const BookMyShowProfileUI({super.key});

  @override
  State<BookMyShowProfileUI> createState() => _BookMyShowProfileUIState();
}

class _BookMyShowProfileUIState extends State<BookMyShowProfileUI> {
  var listContent = [
    BookMyShowList(const Icon(Icons.online_prediction), "Your Orders",
        "View all your bookings & purchases"), // Dummy value for showing the super star status bar
    BookMyShowList(const Icon(Icons.online_prediction), "Your Orders",
        "View all your bookings & purchases"),
    BookMyShowList(const Icon(Icons.stream), "Stream Library",
        "Rented & Purchased Movies"),
    BookMyShowList(const Icon(Icons.credit_card), "Play Credit Card",
        "View your Play Credit Card details and offers"),
    BookMyShowList(const Icon(Icons.help_center), "Help Centre",
        "Need help or have questions?"),
    BookMyShowList(const Icon(Icons.account_box), "Accounts & Settings",
        "Location, Payments, Permissions & More"),
    BookMyShowList(const Icon(Icons.celebration), "Rewards",
        "View your rewards & unlock new ones"),
    BookMyShowList(const Icon(Icons.discount), "Offers", null),
    BookMyShowList(const Icon(Icons.gif_box), "GIft Cards", null),
    BookMyShowList(const Icon(Icons.food_bank), "Food & Beverage", null),
    BookMyShowList(const Icon(Icons.airplane_ticket), "List your Show",
        "Got an event? Partner with us"),
    BookMyShowList(const Icon(Icons.airplane_ticket), "List your Show",
        "Got an event? Partner with us"), // Dummy value for last UI
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Dinesh Nagarajan!",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Edit Profile >",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            const Spacer(),
            InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ))
          ],
        ),
        backgroundColor: const Color(0xff292A37),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                height: 1,
                color: Colors.grey.withAlpha(50),
              );
            },
            itemCount: listContent.length,
            itemBuilder: ((context, index) {
              if (index == 0) {
                return Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFAFB5E3),
                    ],
                  )),
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width / 12,
                            height: 2,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text("4 bookings away from being a SUPER STAR"),
                        ],
                      ),
                      const Spacer(),
                      const Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Text("Rewards and benefits await. Know more"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                );
              }
              if (index == listContent.length - 1) {
                return Container(
                  color: Colors.grey[100],
                  height: 90,
                  child: const Column(
                    children: [
                      Spacer(),
                      Row(
                        children: [
                          Spacer(),
                          Text("Share"),
                          Spacer(),
                          Text("Rate us"),
                          Spacer(),
                          Text("BookMyShow"),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Text("App Version 1.1.0"),
                      Spacer(),
                    ],
                  ),
                );
              } else {
                return SizedBox(
                  height: 80,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        listContent[index].icon,
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listContent[index].title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            (listContent[index].description == null)
                                ? const SizedBox()
                                : Text(
                                    listContent[index].description ?? "",
                                    style: const TextStyle(fontSize: 14),
                                  )
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                        const SizedBox(
                          width: 12,
                        ),
                      ],
                    ),
                  ),
                );
              }
            })),
      ),
    );
  }
}
