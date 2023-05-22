// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking_app/utils/app_style.dart';
import 'package:ticketbooking_app/widgets/thick_continer.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /*blue part of card*/
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      ThickContiner(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    "The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      ThickContiner(),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
            /*red part of card*/
            ,
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding:
                  EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "DATE",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
