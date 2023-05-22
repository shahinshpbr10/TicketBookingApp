// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking_app/utils/app_layout.dart';
import 'package:ticketbooking_app/utils/app_style.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print('Hotel Price ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5),
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/${hotel['image']}'),
              ),
            ),
          ),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakicolor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.kakicolor),
          )
        ],
      ),
    );
  }
}
