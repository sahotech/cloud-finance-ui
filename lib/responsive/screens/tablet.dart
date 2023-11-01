// ignore_for_file: must_be_immutable

import 'package:cloud_finance_ui/utils/utils.dart';
import 'package:cloud_finance_ui/widgets/bar-graph/bar_graph.dart';
import 'package:cloud_finance_ui/widgets/side_nav.dart';

import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            logo(),
            const SizedBox(width: 20),
            Text(
              "CloudFinance",
              style: titleSize,
            ),
          ],
        ),
        elevation: 3,
        flexibleSpace: Container(
          height: kToolbarHeight,
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.search_rounded),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: bgColor,
                      ),
                      child: const Stack(
                        alignment: Alignment(0.5, -0.5),
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.red,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(profile),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Saho Tech',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text('sahotech06@gmil.com'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: bgColor,
      drawer: const SideNav(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Overview',
                style: titleSize,
              ),
              const SizedBox(height: 20),
              //
              SizedBox(
                // height: 120,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: sw < 650
                        ? 2 / 1.32
                        : sw < 700
                            ? 2 / 1.2
                            : sw < 750
                                ? 2 / 1.1
                                : sw < 800
                                    ? 2 / 1
                                    : sw < 850
                                        ? 2 / 0.95
                                        : sw < 900
                                            ? 2 / 0.93
                                            : sw < 950
                                                ? 2 / 0.9
                                                : sw < 1000
                                                    ? 2 / 0.89
                                                    : 2 / 0.78,
                  ),
                  itemCount: gridItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                gridItems[index]['icon'],
                                color: Colors.grey,
                                size: 18,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                gridItems[index]['subtitle'],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                gridItems[index]['title'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: gridItems[index]['bgcolor'],
                                ),
                                child: Text(
                                  gridItems[index]['title1'],
                                  style: TextStyle(
                                    color: gridItems[index]['color'],
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                gridItems[index]['rowsubtitle1'],
                                style: TextStyle(
                                  color: gridItems[index]['color'],
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                gridItems[index]['rowsubtitle2'],
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              //Bar graph
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  // height: 300,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Statistics',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: blueColor,
                              ),
                              const SizedBox(width: 10),
                              const Text('Earnings')
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: graphColor,
                              ),
                              const SizedBox(width: 10),
                              const Text('Spendings')
                            ],
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: bgColor,
                            ),
                            child: const Center(
                              child: Row(
                                children: [
                                  Text('Yearly'),
                                  SizedBox(width: 10),
                                  Icon(Icons.keyboard_arrow_down)
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),

                      ////
                      SizedBox(
                        height: 280,
                        child: AspectRatio(
                          aspectRatio: 3,
                          child: MyBarGraph(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  height: 370,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Savings',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            '\$406.27',
                            style: titleSize,
                          ),
                          const SizedBox(width: 30),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green.shade100,
                            ),
                            child: const Text(
                              '⬆8.2%',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            '+\$33.3',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(width: 10),
                          Text(
                            'than last month',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Dream Studio',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$251.8/',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '\$750',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.4,
                        minHeight: 6,
                        backgroundColor: bgColor,
                        color: blueColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Education',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$251.8/',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '\$750',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.6,
                        minHeight: 10,
                        backgroundColor: bgColor,
                        color: blueColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Health Care',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$30.8/',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '\$150',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.2,
                        minHeight: 6,
                        backgroundColor: bgColor,
                        color: blueColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ],
                  ),
                ),
              ),

              ///
              Container(
                padding: const EdgeInsets.all(16),
                height: 370,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Latest Transaction',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("View all"),
                        )
                      ],
                    ),
                    // const SizedBox(height: 5),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: DataTable(
                          columns: tabletitles.map((e) {
                            return DataColumn(
                                numeric: true,
                                tooltip: e,
                                label: Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ));
                          }).toList(),
                          rows: tableitems.map((e) {
                            return DataRow(
                              onSelectChanged: (value) {},
                              cells: [
                                DataCell(
                                  Text(
                                    e['to/from'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    e['date'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    e['description'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    e['amount'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: e['statuscolor'],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.green,
                                        )),
                                    child: Text(
                                      e['status'],
                                      style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Row(
                                    children: [
                                      Icon(
                                        e['icon1'],
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 5),
                                      Icon(
                                        e['icon2'],
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 5),
                                      Icon(
                                        e['icon3'],
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 5),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }).toList()),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
