// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_ui_app_design/utils/constaints.dart';
import 'package:flutter_ui_app_design/utils/profile_card.dart';
import 'package:flutter_ui_app_design/utils/toast_messages.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 46,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          color: appBarTextColor,
                          fontSize: 18,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ToastMessage().toastMessage(
                            'You clicked on image profile',
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(imageUrl1),
                        ),
                      ),
                    ],
                  ),
                ),
                // search bar
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    ToastMessage().toastMessage(
                      'You clicked on search bar',
                    );
                  },
                  child: Container(
                    height: 36,
                    padding: EdgeInsets.only(
                      left: 12,
                    ),
                    decoration: BoxDecoration(
                      color: searchBarContainerColor,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          size: 28,
                          color: textColor,
                        ),
                        hintText: text2,
                        hintStyle: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                ),

                // mid content
                SizedBox(
                  height: 40,
                ),
                Text(
                  text3,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  text4,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                  ),
                ),

                // profile card
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    ToastMessage().toastMessage(
                      'You clicked on profile card',
                    );
                  },
                  child: SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ProfileCard(
                          profileImge: imageUrl2,
                          profileName: text5,
                          coverImage: imageUrl3,
                          profileDesc: text6,
                          houseAdd: text7,
                          schoolAdd: text8,
                          icon: Icon(
                            LineIcons.heart,
                            color: iconColor,
                          ),
                          updateText: text9,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  text10,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  text11,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    ToastMessage().toastMessage(
                      'You clicked on competitions notification',
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: containerColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            child: Image.network(
                              imageUrl4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 46,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                text12,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 46,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      text13,
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      text14,
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
