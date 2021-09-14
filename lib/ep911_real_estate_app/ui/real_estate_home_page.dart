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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dubai, Palm Jumeirah"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("1,020 results"), Text("Newest")],
              ),
              SizedBox(
                height: 16,
              ),
              ...List.generate(
                  10,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$ 499,990",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Betterhomes.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Text("Exclusive, serviced, all bills included. City views"),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Icon(Icons.bed_outlined),
                              SizedBox(width: 4),
                              Text('2'),
                              SizedBox(width: 8),
                              Icon(Icons.bathtub_outlined),
                              SizedBox(width: 4),
                              Text("2"),
                              SizedBox(width: 8),
                              Icon(Icons.apps),
                              SizedBox(width: 4),
                              Text("2998"),
                              Spacer(),
                              Text("Villa")
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
