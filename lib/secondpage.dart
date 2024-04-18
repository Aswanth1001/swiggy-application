import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_application/firstpage.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 237, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 237, 237, 237),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Best in Burgers ",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Westind burgers",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "45-50 mins . SN park",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Burgers,Beverages",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 255, top: 15),
                    child: Stack(
                      children: [
                        Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 33, 102, 35),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                "4.3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 70,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.bandhanbank.com/sites/default/files/2021-09/Bandhan_Swiggy_Offer_Banner_02.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 50,
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search for dishes",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Top Picks",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 220,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(images3[index]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 10,
              thickness: 8,
              color: Color.fromARGB(255, 208, 207, 207),
            ),
          ],
        ),
      ),
    );
  }
}

final List images3 = [
  "https://media-assets.swiggy.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/e33e1d3ba7d6b2bb0d45e1001b731fcf",
  "https://media-assets.swiggy.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/zyg3ligxixhanyjbwoey",
  "https://media-assets.swiggy.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/59fcf06562729551dd7970d16e1cbde9",
  "https://media-assets.swiggy.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/49d60c8b2a966219918f28a6ffe15d05"
];
