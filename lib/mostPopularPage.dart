// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:uts_ambw/card.dart';
import 'package:uts_ambw/main.dart';
import 'package:uts_ambw/home.dart';
import 'package:flutter/material.dart';

class mostPopularPage extends StatefulWidget {
  const mostPopularPage({super.key});

  @override
  State<mostPopularPage> createState() => _mostPopularPageState();
}

class _mostPopularPageState extends State<mostPopularPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.amber[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homePage()));
                        },
                      ),
                    ),
                    Center(
                      child: Text(
                        "Most Popular",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: restaurants.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: cardRestaurant(
                            item: restaurants[index],
                            width: 200,
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
