// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_ambw/card.dart';
import 'package:uts_ambw/main.dart';

class mealDealsPage extends StatefulWidget {
  const mealDealsPage({super.key});

  @override
  State<mealDealsPage> createState() => _mealDealsPageState();
}

class _mealDealsPageState extends State<mealDealsPage> {
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
                        "Meals Deals",
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
                      itemCount: meals.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: cardMeals(
                            item: meals[index],
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
