import 'package:badges/badges.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HaibooksHomePage extends StatefulWidget {
  const HaibooksHomePage({Key? key}) : super(key: key);

  @override
  _HaibooksHomePageState createState() => _HaibooksHomePageState();
}

class _HaibooksHomePageState extends State<HaibooksHomePage> {
  ValueNotifier<int> _topTabIndex = ValueNotifier(0);
  ValueNotifier<int> _bottomTabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: _bottomTabIndex,
            builder: (context, value, child) {
              if (value == 0) {
                return Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 4),
                        decoration: BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(color: Colors.blueGrey[400]!, offset: Offset(0, 4)),
                          BoxShadow(color: Colors.grey[200]!, offset: Offset(0, 6))
                        ]),
                        child: Column(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                                  Expanded(
                                      child: Center(
                                    child: Text(
                                      "Haibooks Organization",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  )),
                                  Badge(
                                    child: Icon(Icons.charging_station),
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _topTabIndex.value = 0;
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable: _topTabIndex,
                                        builder: (context, value, child) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            decoration: BoxDecoration(
                                                color: value == 0 ? Colors.blueGrey[50] : Colors.transparent,
                                                borderRadius: BorderRadius.circular(16)),
                                            child: Center(
                                              child: Text(
                                                "Last month",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: value == 0 ? Colors.blue : Colors.grey,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _topTabIndex.value = 1;
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable: _topTabIndex,
                                        builder: (context, value, child) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            decoration: BoxDecoration(
                                                color: value == 1 ? Colors.blueGrey[50] : Colors.transparent,
                                                borderRadius: BorderRadius.circular(16)),
                                            child: Center(
                                              child: Text(
                                                "6 months",
                                                style: TextStyle(
                                                    color: value == 1 ? Colors.blue : Colors.grey,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _topTabIndex.value = 2;
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable: _topTabIndex,
                                        builder: (context, value, child) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            decoration: BoxDecoration(
                                                color: value == 2 ? Colors.blueGrey[50] : Colors.transparent,
                                                borderRadius: BorderRadius.circular(16)),
                                            child: Center(
                                              child: Text(
                                                "Fiscal year",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: value == 2 ? Colors.blue : Colors.grey,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        flex: 15,
                        child: ValueListenableBuilder<int>(
                            builder: (context, value, child) {
                              if (value == 0) {
                                return Text("Last month page");
                              } else if (value == 1) {
                                return SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          children: [
                                            Icon(Icons.bar_chart),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "Profit and Loss",
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        height: 430,
                                        width: double.infinity,
                                        decoration: BoxDecoration(color: Colors.white),
                                        child: Column(
                                          children: [
                                            Text(
                                              "£ 980.16",
                                              style: TextStyle(
                                                fontSize: 28,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8),
                                              child: Text(
                                                "Net Profit",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              indent: 16,
                                              endIndent: 16,
                                            ),
                                            SizedBox(
                                              height: 16,
                                            ),
                                            SizedBox(
                                              height: 240,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: BarChart(
                                                  BarChartData(
                                                    borderData: FlBorderData(show: false),
                                                    barGroups: [
                                                      BarChartGroupData(x: 0, barsSpace: 8, barRods: [
                                                        BarChartRodData(y: 2000, colors: [Colors.teal]),
                                                        BarChartRodData(y: 1500, colors: [Colors.blue])
                                                      ]),
                                                      BarChartGroupData(x: 1, barsSpace: 8, barRods: [
                                                        BarChartRodData(y: 3500, colors: [Colors.teal]),
                                                        BarChartRodData(y: 3000, colors: [Colors.blue])
                                                      ]),
                                                      BarChartGroupData(x: 2, barsSpace: 8, barRods: [
                                                        BarChartRodData(y: 1200, colors: [Colors.teal]),
                                                        BarChartRodData(y: 1900, colors: [Colors.blue])
                                                      ]),
                                                      BarChartGroupData(x: 3, barsSpace: 8, barRods: [
                                                        BarChartRodData(y: 2000, colors: [Colors.teal]),
                                                        BarChartRodData(y: 1500, colors: [Colors.blue])
                                                      ]),
                                                      BarChartGroupData(x: 4, barsSpace: 8, barRods: [
                                                        BarChartRodData(y: 3000, colors: [Colors.teal]),
                                                        BarChartRodData(y: 2000, colors: [Colors.blue])
                                                      ]),
                                                      BarChartGroupData(
                                                        x: 5,
                                                        barsSpace: 8,
                                                        barRods: [
                                                          BarChartRodData(y: 3100, colors: [Colors.teal]),
                                                          BarChartRodData(y: 2100, colors: [Colors.blue])
                                                        ],
                                                      ),
                                                    ],
                                                    gridData: FlGridData(show: false),
                                                    titlesData: FlTitlesData(
                                                        leftTitles: SideTitles(
                                                            showTitles: true,
                                                            getTextStyles: (context, value) {
                                                              return TextStyle(color: Colors.grey, fontSize: 12);
                                                            },
                                                            interval: 1000),
                                                        bottomTitles: SideTitles(
                                                            showTitles: true,
                                                            getTextStyles: (context, value) {
                                                              return TextStyle(color: Colors.grey, fontSize: 12);
                                                            },
                                                            getTitles: (v) {
                                                              switch (v.toInt()) {
                                                                case 0:
                                                                  return "Aug";
                                                                case 1:
                                                                  return "Sep";
                                                                case 2:
                                                                  return "Oct";
                                                                case 3:
                                                                  return "Nov";
                                                                case 4:
                                                                  return "Dec";
                                                                case 5:
                                                                  return "Jan";
                                                                case 6:
                                                                  return "Aug";
                                                                default:
                                                                  return "??";
                                                              }
                                                            }),
                                                        rightTitles: SideTitles(showTitles: false),
                                                        topTitles: SideTitles(showTitles: false)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8 - .0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 32,
                                                        width: 8,
                                                        decoration: BoxDecoration(
                                                            color: Colors.tealAccent,
                                                            borderRadius: BorderRadius.circular(8)),
                                                      ),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      Text("Income"),
                                                      Spacer(),
                                                      Text("Expenses"),
                                                      SizedBox(
                                                        width: 4,
                                                      ),
                                                      Container(
                                                        height: 32,
                                                        width: 8,
                                                        decoration: BoxDecoration(
                                                            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "£ 3,460.24",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.tealAccent,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "£ 2,480.08",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.blue,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: Row(
                                          children: [
                                            Icon(Icons.bar_chart),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "Banking",
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Text("Fiscal year page");
                              }
                            },
                            valueListenable: _topTabIndex,
                            child: Placeholder())),
                  ],
                );
              } else {
                return Container(
                    child: Center(
                  child: Text("Menu"),
                ));
              }
            },
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(color: Colors.blueGrey[400]!, offset: Offset(0, 4)),
                      BoxShadow(color: Colors.grey[200]!, offset: Offset(0, 6))
                    ]),
                    child: Column(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                              Expanded(
                                  child: Center(
                                child: Text(
                                  "Haibooks Organization",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                              Badge(
                                child: Icon(Icons.charging_station),
                              ),
                            ],
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _topTabIndex.value = 0;
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _topTabIndex,
                                    builder: (context, value, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: value == 0 ? Colors.blueGrey[50] : Colors.transparent,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "Last month",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: value == 0 ? Colors.blue : Colors.grey,
                                                fontSize: 12),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _topTabIndex.value = 1;
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _topTabIndex,
                                    builder: (context, value, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: value == 1 ? Colors.blueGrey[50] : Colors.transparent,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "6 months",
                                            style: TextStyle(
                                                color: value == 1 ? Colors.blue : Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _topTabIndex.value = 2;
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _topTabIndex,
                                    builder: (context, value, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: value == 2 ? Colors.blueGrey[50] : Colors.transparent,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "Fiscal year",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: value == 2 ? Colors.blue : Colors.grey,
                                                fontSize: 12),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(flex: 15, child: Placeholder()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 64,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _bottomTabIndex.value = 0;
                    },
                    child: ValueListenableBuilder<int>(
                      valueListenable: _bottomTabIndex,
                      builder: (context, value, child) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              size: 20,
                              color: value == 0 ? Colors.blue : Colors.blueGrey,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Dashboard",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            size: 20,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Dashboard"),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _bottomTabIndex.value = 1;
                    },
                    child: ValueListenableBuilder<int>(
                      valueListenable: _bottomTabIndex,
                      builder: (context, value, child) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu,
                              size: 20,
                              color: value == 1 ? Colors.blue : Colors.blueGrey,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Menu",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.menu,
                            size: 20,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Menu"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
