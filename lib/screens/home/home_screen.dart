import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/category.dart';
import 'components/content_containers.dart';
import 'components/full_screen.dart';
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
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white)),
          ],
        ),
        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data!.contains(ConnectivityResult.mobile)) {
              return FullScreen(categories: categories);
            } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
              return FullScreen(categories: categories);
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/pixelcut-export.png",
                      height: 350,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Retry",
                          style: TextStyle(
                              fontFamily: 'arial',
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              );
            }
          },
        ));
  }
}
