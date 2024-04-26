// import 'dart:html';

// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_import, unused_import, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw/card.dart';
import 'package:uts_ambw/home.dart';
import 'package:uts_ambw/mostPopularPage.dart';
import 'package:uts_ambw/mealDealsPage.dart';

void main() {
  runApp(const home());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;

  var screens = [homePage(), homePage(), homePage(), homePage(), homePage()];

  var listIsiNavbar = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.pin_drop_outlined),
        label: 'Discovery',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.bookmark),
        label: 'Bookmark',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.thumb_up_sharp),
        label: 'Top Foodie',
        backgroundColor: Colors.white),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_4),
        label: 'Profile',
        backgroundColor: Colors.white)
  ];

  List<BottomNavigationBarItem> getBottomNavifationItems() {
    return listIsiNavbar;
  }

  List<Widget> getScreens() {
    return screens;
  }

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final navBarItems = getBottomNavifationItems();
    final currentScreens = getScreens();

    return Scaffold(
      body: currentScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: true,
        items: navBarItems,
        currentIndex: currentIndex,
        onTap: onTapped,
      ),
    );
  }
}

class Restaurant {
  String name;
  String alamat;
  String category;
  String image;

  Restaurant(
      {required this.name,
      required this.alamat,
      required this.category,
      required this.image});
}

class Meals {
  String name;
  String desc;
  double price;
  String image;

  Meals(
      {required this.name,
      required this.desc,
      required this.price,
      required this.image});
}

final List<Restaurant> restaurants = [
  Restaurant(
      name: 'KFC',
      alamat: 'Jalan Sugen 1',
      category: 'Fried Chicken, American',
      image: 'assets/images/makanan.jpg'),
  Restaurant(
      name: 'Greek House',
      alamat: 'Jalan Sugen 2',
      category: 'Salad',
      image: 'assets/images/makanan.jpg'),
  Restaurant(
      name: 'Bebek Pak Janggut',
      alamat: 'Jalan Sugen 3',
      category: 'Fried Chicken, Indonesian',
      image: 'assets/images/makanan.jpg'),
  Restaurant(
      name: 'Sushi Yoy',
      alamat: 'Jalan Sugen 4',
      category: 'Japanese',
      image: 'assets/images/makanan.jpg'),
  Restaurant(
      name: 'Ramen Klan',
      alamat: 'Jalan Sugen 5',
      category: 'Noodle, Japanese',
      image: 'assets/images/makanan.jpg'),
  Restaurant(
      name: 'Pizza Hut',
      alamat: 'Jalan Sugen 6',
      category: 'Italian',
      image: 'assets/images/makanan.jpg'),
];

final List<Meals> meals = [
  Meals(
      name: 'Mie Ayam',
      desc: 'Pokoknya enak',
      price: 15000,
      image: 'assets/images/makanan.jpg'),
  Meals(
      name: 'Mie Babi',
      desc: 'Pokoknya enak',
      price: 40000,
      image: 'assets/images/makanan.jpg'),
  Meals(
      name: 'Mie Bebek',
      desc: 'Pokoknya enak',
      price: 20000,
      image: 'assets/images/makanan.jpg'),
  Meals(
      name: 'Mie Wagyu',
      desc: 'Pokoknya enak',
      price: 70000,
      image: 'assets/images/makanan.jpg'),
  Meals(
      name: 'Mie Nugget',
      desc: 'Pokoknya enak',
      price: 15000,
      image: 'assets/images/makanan.jpg'),
  Meals(
      name: 'Mie Kambing',
      desc: 'Pokoknya enak',
      price: 25000,
      image: 'assets/images/makanan.jpg'),
];

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber[100],
          title: Text(
            "Sydney CBD",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // start of Search Box
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          "Search for restaurants...",
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    )),
              ),
              // end of Search Box

              // start of Gambar Besar
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/makanan.jpg',
                      fit: BoxFit.fill,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                  ),
                  Positioned(
                    child: Text("Indonesian Style"),
                    bottom: 35,
                    left: 20,
                  ),
                  Positioned(
                    child: Text("12 Places",
                        style: TextStyle(
                          fontSize: 12,
                        )),
                    bottom: 15,
                    left: 20,
                  ),
                  Positioned(
                    bottom: 20,
                    right: 13,
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.grey,
                          ),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.grey,
                          ),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // end of Gambar Besar

              // start of Most Popular
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mostPopularPage(),
                              ),
                            );
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.blue[400],
                            ),
                          )),
                    ],
                  )),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: restaurants.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: 16.0, left: index == 0 ? 16 : 0, bottom: 12),
                        child: cardRestaurant(
                          item: restaurants[index],
                          width: 200,
                        ),
                      );
                    }),
              ),
              // end of Most Popular

              // start of Meal Deals
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Meal Deals",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mealDealsPage(),
                              ),
                            );
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.blue[400],
                            ),
                          )),
                    ],
                  )),
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: meals.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: 16.0, left: index == 0 ? 16 : 0, bottom: 12),
                        child: cardMeals(
                          item: meals[index],
                          width: 200,
                        ),
                      );
                    }),
              ),
              // end of Meal Deals
            ],
          ),
        ));
  }
}
