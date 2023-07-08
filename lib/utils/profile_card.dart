// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_ui_app_design/utils/constaints.dart';

class ProfileCard extends StatelessWidget {
  final String profileImge;
  final String profileName;
  final String coverImage;
  final String profileDesc;
  final String houseAdd;
  final String schoolAdd;
  final String updateText;
  final Icon icon;

  ProfileCard({
    super.key,
    required this.profileImge,
    required this.profileName,
    required this.coverImage,
    required this.profileDesc,
    required this.houseAdd,
    required this.schoolAdd,
    required this.updateText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Container(
        width: 270,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
            color: containerColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    profileImge,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  profileName,
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 100,
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
                  coverImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              profileDesc,
              style: TextStyle(
                color: textColor,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      houseAdd,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                    Text(
                      schoolAdd,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    icon,
                    Text(
                      updateText,
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
