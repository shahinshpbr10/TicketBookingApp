// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking_app/screens/ticket_view.dart';
import 'package:ticketbooking_app/utils/app_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headLineStyle3,
                      ),
                      Gap(5),
                      Text(
                        "Book Tickets",
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const Gap(25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205),
                    ),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Flight",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {
                      // ignore: avoid_print
                      print("You Are Tapped");
                    },
                    child: Text(
                      "view all",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const Gap(15),
        TicketView()
      ]),
    );
  }
}
