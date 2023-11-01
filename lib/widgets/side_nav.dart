import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  List sidenavitems = [
    {
      'icon': Icons.dashboard,
      'title': 'Overview',
      'sub': null,
      'subIcon': null,
    },
    {
      'icon': Icons.assessment_rounded,
      'title': 'Statistics',
      'sub': null,
      'subIcon': null
    },
    {
      'icon': Icons.account_balance_wallet_rounded,
      'title': 'savings',
      'sub': null,
      'subIcon': null,
    },
    {
      'icon': Icons.incomplete_circle_rounded,
      'title': 'Portfolios',
      'sub': null,
      'subIcon': Icons.keyboard_arrow_down,
    },
    {
      'icon': Icons.email_rounded,
      'title': 'Messages',
      'sub': '13',
      'subIcon': null,
    },
    {
      'icon': Icons.article_rounded,
      'title': 'Transactions',
      'sub': null,
      'subIcon': null,
    },
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 24),
      width: 250,
      height: ss.height,
      color: cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   children: [
          //     logo(),
          //     const SizedBox(width: 20),
          //     Text(
          //       "CloudFinance",
          //       style: titleSize,
          //     ),
          //   ],
          // ),
          const SizedBox(height: 20),
          const Text(
            'MENU',
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: sidenavitems.length,
            itemBuilder: (BuildContext context, int index) {
              return CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: index == currentIndex ? blueColor : cardColor,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        sidenavitems[index]['icon'],
                        color: index == currentIndex ? cardColor : Colors.grey,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        sidenavitems[index]['title'],
                        style: TextStyle(
                          color:
                              index == currentIndex ? cardColor : Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 30),
                      sidenavitems[index]['sub'] == null
                          ? Text(
                              sidenavitems[index]['sub'] ?? '',
                              style: TextStyle(
                                color: cardColor,
                              ),
                            )
                          : CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.red,
                              child: Text(
                                sidenavitems[index]['sub'] ?? '',
                                style: TextStyle(
                                  color: cardColor,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                      Icon(
                        sidenavitems[index]['subIcon'],
                        color: index == currentIndex ? cardColor : Colors.grey,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          const Text(
            'GENERAL',
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 20),
          genaralItems(ss, 'Settings', Icons.settings_rounded),
          const SizedBox(height: 5),
          genaralItems(ss, 'Apperances', Icons.photo_rounded),
          const SizedBox(height: 5),
          genaralItems(ss, 'Need Help?', Icons.info_rounded),
          const SizedBox(height: 5),
        ],
      ),
    );
  }

  genaralItems(Size ss, String title, IconData icon) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        width: ss.width,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
              size: 18,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
