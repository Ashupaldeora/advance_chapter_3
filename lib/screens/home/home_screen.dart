import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/category.dart';
import 'models/data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categories = [
    'All',
    'Eren Yeager',
    'Gaming',
    'Feature Phones',
    'Flutter',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              "assets/images/youtube.png",
              height: 30,
            ),
            Text(
              " YouTube",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'arial',
                  letterSpacing: -1),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cast,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: Colors.white)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CategoryItem(category: categories[index]),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) => contentContainers(
                      index: index,
                    )),
          )
        ],
      ),
    );
  }
}

class contentContainers extends StatelessWidget {
  const contentContainers({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(data[index].image), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data[index].titles,
                  style: TextStyle(
                      fontFamily: 'arial',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  data[index].viewsInfo,
                  style: TextStyle(
                      fontFamily: 'arial',
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
