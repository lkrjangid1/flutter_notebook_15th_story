import 'package:flutter/material.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({Key? key}) : super(key: key);

  @override
  _RealEstateHomePageState createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.tune))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Dubai, Palm Jumeirah"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("1,020 results"), Text("Newest")],
            )
          ],
        ),
      ),
    );
  }
}
