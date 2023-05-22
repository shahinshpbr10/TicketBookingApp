// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking_app/utils/app_style.dart';
import 'package:ticketbooking_app/widgets/icon_text.dart';

import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What Are u\nYou Looking For ?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          Container(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Center(child: Text("Airline Tickets")),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50)),
                            color: Colors.white))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Center(child: Text("Hotel")),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50)),
                            color: Colors.grey.shade300)))
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFF4F6FD)),
          ),
          const Gap(25),
          InkWell(
              onTap: () {},
              child: TextIcon(
                  icon: Icons.flight_takeoff_rounded, text: "Departure")),
          const Gap(20),
          TextIcon(icon: Icons.flight_land_rounded, text: "Arival"),
          const Gap(25),
          InkWell(
            onTap: () {},
            child: Container(
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 8, 236),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Gap(25),
          Row(
            children: [
              Text('Upcoming Flight', style: Styles.headLineStyle2),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  'View All',
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(455),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(20)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image/flghtinside.jpg'),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      '20% discount on the early booking of this flight,dont Miss. ',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15),
                            vertical: AppLayout.getHeight(15)),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(230),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survey  and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(
                          15,
                        ),
                        vertical: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(18),
                        ),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 38))
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
