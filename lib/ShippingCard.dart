// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class shippingCard extends StatelessWidget {
  final String Profil_card_link, name, passing_time, Picture_link, Explanation;

  const shippingCard(
      {super.key,
      required this.Profil_card_link,
      required this.name,
      required this.passing_time,
      required this.Picture_link,
      required this.Explanation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          height: 450.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(Profil_card_link),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            passing_time,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                Explanation,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.0),
              Image.network(
                Picture_link,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 6.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  createButton(
                    myicon: Icons.favorite,
                    button_name: "Beğen",
                    fonkiyonum: () {
                      print("Beğen");
                    },
                  ),
                  createButton(
                    myicon: Icons.comment,
                    button_name: "Yorum",
                    fonkiyonum: () {
                      print("Yorum");
                    },
                  ),
                  createButton(
                    myicon: Icons.share,
                    button_name: "Paylaş",
                    fonkiyonum: () {
                      print("Paylaş");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class createButton extends StatelessWidget {
  final IconData myicon;
  final String button_name;
  final fonkiyonum;

  createButton(
      {required this.myicon,
      required this.button_name,
      required this.fonkiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonkiyonum,
        child: Container(
          padding: EdgeInsets.all(2.0),
          child: Row(
            children: <Widget>[
              Icon(
                myicon,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                button_name,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
