import 'package:firist/ShippingCard.dart';
import 'package:flutter/material.dart';

class Profil_Page extends StatelessWidget {
  final String name_surname, profil_picture, nickname, coverimage;

  const Profil_Page({
    super.key,
    required this.name_surname,
    required this.profil_picture,
    required this.nickname,
    required this.coverimage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
              ),
              Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(coverimage),
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                bottom: 0.0,
                left: 20.0,
                child: Hero(
                  tag: name_surname,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          profil_picture,
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 185.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name_surname,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      nickname,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15.0,
                top: 130.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.grey[100],
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        size: 18.0,
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "Takip et",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  }),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Counter("20K", "Takipçi"),
                Counter("500", "Takip"),
                Counter("75", "Paylaşım"),
              ],
            ),
          ),
          shippingCard(
            Explanation: "Gotcha",
            Picture_link:
                "https://cdn.pixabay.com/photo/2022/11/05/17/38/spider-web-7572415__340.jpg",
            Profil_card_link:
                "https://cdn.pixabay.com/photo/2022/10/31/17/57/subway-7560452__340.jpg",
            name: "Emilia",
            passing_time: "1 year ago",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.purple,
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          )),
    );
  }

  Column Counter(String counter, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          counter,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
