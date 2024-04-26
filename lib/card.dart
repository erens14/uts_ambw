// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, must_be_immutable, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_ambw/home.dart';
import 'package:uts_ambw/main.dart';

class cardRestaurant extends StatelessWidget {
  final Restaurant item;
  double width;

  cardRestaurant({super.key, required this.item, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 4),
                    Text(
                      item.alamat,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 4),
                    Text(
                      item.category,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class cardMeals extends StatelessWidget {
  final Meals item;
  double width;

  cardMeals({super.key, required this.item, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 4),
                    Text(
                      item.desc,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "\Rp.${item.price.toString()}",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
