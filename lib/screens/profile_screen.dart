// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sort_child_properties_last

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:ticketbooking_app/utils/app_style.dart';
import 'package:ticketbooking_app/widgets/column_layout.dart';

import '../utils/app_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        child: ListView(
          children: [
            Row(
              children: [
                Gap(AppLayout.getHeight(40)),
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/image/aeroplane.png'),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Booking Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    Gap(AppLayout.getHeight(2)),
                    Text(
                      "New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(3),
                          vertical: AppLayout.getHeight(3)),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEF4F3),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF526799),
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Text(
                            'Premium status',
                            style: Styles.textStyle.copyWith(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5))
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print('You are Tapped');
                      },
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(
              color: Colors.grey.shade300,
            ),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xFF264CD2))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(4)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'You \'v got a new award',
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'You have 95 flight in a year',
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Text(
              'Accumulated miles',
              style: Styles.headLineStyle2,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(25)),
                  Text(
                    '192802',
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles accured',
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        '23 May 2023',
                        style: Styles.headLineStyle4.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firsttext: '23 042',
                          secondtext: 'miles',
                          alignment: CrossAxisAlignment.start),
                      AppColumnLayout(
                          firsttext: 'Airline CO',
                          secondtext: 'Recived from',
                          alignment: CrossAxisAlignment.start)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firsttext: '24',
                          secondtext: 'miles',
                          alignment: CrossAxisAlignment.start),
                      AppColumnLayout(
                          firsttext: 'McDonal\'s',
                          secondtext: 'Recived from',
                          alignment: CrossAxisAlignment.start),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firsttext: '52 304',
                          secondtext: 'miles',
                          alignment: CrossAxisAlignment.start),
                      AppColumnLayout(
                          firsttext: 'EXUMA',
                          secondtext: 'Recived from',
                          alignment: CrossAxisAlignment.start)
                    ],
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            InkWell(
              onTap: () {
                print('You are tapped');
              },
              child: Center(
                  child: Text(
                'How to get More Miles',
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              )),
            )
          ],
        ),
      ),
    );
  }
}
