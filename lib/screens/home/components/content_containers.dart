import 'package:flutter/material.dart';

import '../models/data.dart';

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
