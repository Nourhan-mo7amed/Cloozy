import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class dashboard extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      "id": "#129",
      "cost": "1264 EGP",
      "date": "12.6.2024",
      "status": "Pending",
      "color": Colors.red
    },
    {
      "id": "#129",
      "cost": "1264 EGP",
      "date": "12.6.2024",
      "status": "Pending",
      "color": Colors.red
    },
    {
      "id": "#129",
      "cost": "1264 EGP",
      "date": "12.6.2024",
      "status": "Pending",
      "color": Colors.red
    },
    {
      "id": "#129",
      "cost": "1264 EGP",
      "date": "12.6.2024",
      "status": "Completed",
      "color": Colors.green
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaf9f6),
      appBar: AppBar(
        backgroundColor: Color(0xfffaf9f6),
        title: Text("Dashboard",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: Icon(Icons.settings, size: 28), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.notifications, size: 28), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Colors.black54),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(14),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Metrics",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Average Daily Sales",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "5,600 EGP",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/icons_images/coins.png',
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons_images/growth.png',
                        height: 30,
                        width: 30,
                        color: Colors.green,
                      ),
                      Text(
                        " 5.4% ",
                        style: TextStyle(fontSize: 17, color: Colors.green),
                      ),
                      Text('Up from yesterday',
                          style: TextStyle(fontSize: 17, color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xff003B5C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Visitors Number",
                      style: TextStyle(fontSize: 18, color: Colors.white70)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("324",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Image.asset(
                        'assets/icons_images/group.png',
                        width: 50,
                        height: 50,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons_images/growth.png',
                        height: 30,
                        width: 30,
                        color: Colors.green,
                      ),
                      Text(
                        " 3.2% ",
                        style: TextStyle(fontSize: 17, color: Colors.green),
                      ),
                      Text('Up from yesterday',
                          style: TextStyle(fontSize: 17, color: Colors.white70))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 180,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sold Categories",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54)),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 11,
                              color: Color(0xff003B5C),
                            ),
                            Text("  Pants 58.6%",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff003B5C),
                                )),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 11,
                              color: Colors.blue,
                            ),
                            Text("  Shirts 18.7%",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 11,
                              color: Color.fromARGB(255, 25, 110, 96),
                            ),
                            Text("  Hoodies 22.7%",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 25, 110, 96),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            value: 58.6,
                            color: Color(0xff003B5C),
                            radius: 30,
                          ),
                          PieChartSectionData(
                            value: 18.7,
                            color: Colors.blue,
                            radius: 30,
                          ),
                          PieChartSectionData(
                            value: 22.7,
                            color: Color.fromARGB(255, 25, 110, 96),
                            radius: 30,
                          ),
                        ],
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Orders",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: Text("See all >",
                      style: TextStyle(fontSize: 16, color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 15),
            // الجدول
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order ID",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        Text("Cost",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        Text("Date",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        Text("Status",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                  ...orders.map(
                    (order) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade300)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(order["id"],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(order["cost"], style: TextStyle(fontSize: 16)),
                          Text(order["date"], style: TextStyle(fontSize: 16)),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: order["color"].withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              order["status"],
                              style: TextStyle(
                                  fontSize: 14,
                                  //color: order["color"],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Payments",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: Text("See all >",
                      style: TextStyle(fontSize: 16, color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
