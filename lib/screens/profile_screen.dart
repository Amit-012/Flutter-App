// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../utils/constaints.dart';
import '../utils/toast_messages.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 46,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ToastMessage().toastMessage(
                            'You clicked on profile image',
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          child: Image.network(
                            imageUrl1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          4,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pText1,
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              pText2,
                              style: TextStyle(
                                color: textColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 1,
                  color: textColor,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  pText3,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'xxxx xxxx xxxx xxxx',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  pText4,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'xx xxxxx xxxxx',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  pText5,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Abc school',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 1,
                  color: textColor,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          ToastMessage().toastMessage(
                            'You clicked on notification',
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Icon(
                                LineIcons.bellAlt,
                                color: textColor,
                              ),
                              Text(
                                'Notification',
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ToastMessage().toastMessage(
                            'You clicked on leaderboard',
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Icon(
                                LineIcons.barChartAlt,
                                color: textColor,
                              ),
                              Text(
                                'Leaderboard',
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ToastMessage().toastMessage(
                            'You clicked on settings',
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Icon(
                                Icons.settings,
                                color: textColor,
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ToastMessage().toastMessage(
                      'You clicked on contribution, view plans, and share card',
                    );
                  },
                  child: Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                LineIcons.home,
                                color: textColor,
                              ),
                              Text(
                                'Contribution',
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                              Icon(
                                LineIcons.greaterThan,
                                color: textColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 1,
                            color: textColor,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                LineIcons.wallet,
                                color: textColor,
                              ),
                              Text(
                                'View Plans',
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                              Icon(
                                LineIcons.greaterThan,
                                color: textColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 1,
                            color: textColor,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: textColor,
                              ),
                              Text(
                                'Share',
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                              Icon(
                                LineIcons.greaterThan,
                                color: textColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    ToastMessage().toastMessage(
                      'You clicked on navigation bar',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            LineIcons.home,
                            color: textColor,
                          ),
                          Text(
                            'HOME',
                            style: TextStyle(color: textColor, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            LineIcons.book,
                            color: textColor,
                          ),
                          Text(
                            'BOOK',
                            style: TextStyle(
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            LineIcons.trophy,
                            color: textColor,
                          ),
                          Text(
                            'COMPETITIONS',
                            style: TextStyle(
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                    ],
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
