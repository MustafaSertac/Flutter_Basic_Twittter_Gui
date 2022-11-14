import 'dart:math';

import 'package:flutter/material.dart';

import 'Profil_Page.dart';
import 'ShippingCard.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Project',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32.0,
          ),
          onPressed: (() {}),
        ),
        title: Text(
          "SocialWorld",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: <Widget>[
                        Notification("Kamil seni takip etti.", "3 dakika önce"),
                      ],
                    );
                  },
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.purple,
                size: 32.0,
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                createnewprofil(
                  "Ayşe",
                  "https://cdn.pixabay.com/photo/2022/11/01/05/18/coffee-7561288_960_720.jpg",
                  "Darker",
                  "https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_960_720.jpg",
                ),
                createnewprofil(
                    "Betül and Faruk",
                    "https://cdn.pixabay.com/photo/2022/08/01/07/20/girl-7357492_960_720.jpg",
                    "Beth",
                    "https://cdn.pixabay.com/photo/2017/10/13/14/15/fantasy-2847724_960_720.jpg"),
                createnewprofil(
                    "Su",
                    "https://cdn.pixabay.com/photo/2022/10/05/05/40/sunset-7499759_960_720.jpg",
                    "Pelim su",
                    "https://cdn.pixabay.com/photo/2022/10/24/09/54/switzerland-7543063_960_720.jpg"),
                createnewprofil(
                    "Betül Ay",
                    "https://cdn.pixabay.com/photo/2017/11/29/09/15/paint-2985569_960_720.jpg",
                    "Ay parçası",
                    "https://cdn.pixabay.com/photo/2022/10/05/05/40/sunset-7499759_960_720.jpg"),
                createnewprofil(
                    "Canan",
                    "https://cdn.pixabay.com/photo/2016/11/22/21/42/woman-1850703_960_720.jpg",
                    "Canan karay Halt Etmiş",
                    "https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736877_960_720.jpg"),
                createnewprofil(
                    "PunkGirl",
                    "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg",
                    "PunkGrl",
                    "https://cdn.pixabay.com/photo/2017/11/20/02/00/fantasy-2964231_960_720.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          shippingCard(
            Explanation: "Thats So perfect",
            Picture_link:
                "https://cdn.pixabay.com/photo/2022/11/04/20/56/mushroom-7570693__340.jpg",
            Profil_card_link:
                "https://cdn.pixabay.com/photo/2014/12/16/22/25/woman-570883_960_720.jpg",
            name: "Ayşe",
            passing_time: "1 year ago",
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

  Padding Notification(String info, String passing_time) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            info,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(passing_time)
        ],
      ),
    );
  }

  Widget createnewprofil(
    String username,
    String profil_picture,
    String setnickname,
    String cover_image,
  ) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool turning_data = await Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return Profil_Page(
              name_surname: username,
              profil_picture: profil_picture,
              coverimage: cover_image,
              nickname: setnickname,
            );
          }));
          if (turning_data) print("Back icon button and profil is working");
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: username,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: NetworkImage(profil_picture),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 2.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                  ),
                ],
              ),
              Text(
                username,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
