// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ui_app_design/utils/bar_chart.dart';
import 'package:flutter_ui_app_design/utils/constaints.dart';

import '../utils/toast_messages.dart';

class SubmissionScreen extends StatelessWidget {
  const SubmissionScreen({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sText1,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
                SizedBox(
                  height: 16,
                ),
                Text(
                  sText2,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                Container(
                  height: 150,
                  width: 300,
                  padding: EdgeInsets.only(
                    left: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sText3,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          height: 3,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        sText4,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          height: 2,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        sText5,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          height: 2,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        sText6,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          height: 2,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  sText7,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () {
                    ToastMessage().toastMessage(
                      'You clicked on bar graph',
                    );
                  },
                  child: Container(
                    height: 300,
                    color: Colors.amber,
                    child: BarChart(),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  sText8,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    sText9,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
