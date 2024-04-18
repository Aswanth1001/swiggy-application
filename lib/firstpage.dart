import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy_application/secondpage.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesome.paper_plane,
                  color: Colors.orange,
                  size: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Wales",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 195,
                ),
                Stack(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 240, 240),
                          borderRadius: BorderRadius.circular(35)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, top: 5),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
            Text(
              "Talap,Kerala 670017,India",
              style: TextStyle(
                  color: const Color.fromARGB(255, 91, 90, 90), fontSize: 12),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoSearchTextField(
                // backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://carousels-ads.swiggy.com/images/slider/2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://carousels-ads.swiggy.com/images/slider/3.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
                options: CarouselOptions(
                  height: 100,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/736x/05/31/64/05316497eb5d1285cba5e872cf1b678c.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 80,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi0PtZJvN4_vmJoNc1SNWmaI1dHUF7xoSSbmRza3ybZHr8H2Pl1q7rsgFMD7jy0eAPccokQ-NsuAXfh4JQ60Y5nA1tohC21tniNl_RWnTuthoAHasvDXpjD-rLQawXr76Wl5IpHT4ehtQY/s846/Icici+swiggy+offer+2021.png"),
                            fit: BoxFit.cover),
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Top rated near you",
                style: GoogleFonts.aBeeZee(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 0,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => secondscreen(),
                                ));
                          },
                          child: Container(
                            width: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(images[index]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 5),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BECAUSE YOU VIEWED WESTIND BURGERS",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    "Here are some featured restaurants for you",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 13,
                        color: const Color.fromARGB(255, 108, 108, 108)),
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => secondscreen(),
                                      ));
                                },
                                child: Container(
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(images2[index]),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 100, top: 5),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List images = [
  "https://newspaperads.ads2publish.com/wp-content/uploads/2017/10/swiggy-food-delivery-app-enjoy-flat-40-off-ad-pune-times-28-10-2017.jpg",
  "https://www.unionbankofindia.co.in/images/swiggy.jpg",
  "https://pbs.twimg.com/media/EPSR24oU4AAMvMk.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTytzO2d_U_oo_g2mTRcAMwbKnoNFRwY92eKInqPkQUTh454y6WGAU5oM1qmdxWwoouFPU&usqp=CAU",
];
final List images2 = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8eEqOc6rVGM6xa2FahX8VWxXJ1Yij6VR2EkE7KXizOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtlpssL-YG-tBHdCBHqPlbqCZ6eJRndxHN1JsUij3l5g&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtlpssL-YG-tBHdCBHqPlbqCZ6eJRndxHN1JsUij3l5g&s",
  "https://media-assets.swiggy.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/bf2a1f4698ebd77a2095a594fe71a68b",
];
