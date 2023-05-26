// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticketbooking_app/utils/app_layout.dart';

class AppTicketTab extends StatelessWidget {
  final String firsttab;
  final String secondtab;

  const AppTicketTab(
      {super.key, required this.firsttab, required this.secondtab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      
      child: Row(
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Center(child: Text("Airline Tickets")),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white))),
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Center(child: Text("Hotel")),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      color: Colors.grey.shade300)))
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF4F6FD)),
    );
  }
}
