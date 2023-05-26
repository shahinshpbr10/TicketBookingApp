// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:barcode/barcode.dart';
import 'package:ticketbooking_app/screens/ticket_view.dart';
import 'package:ticketbooking_app/utils/app_info.dart';
import 'package:ticketbooking_app/utils/app_layout.dart';
import 'package:ticketbooking_app/utils/app_style.dart';
import 'package:ticketbooking_app/widgets/column_layout.dart';
import 'package:ticketbooking_app/screens/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'Tickets',
              style: Styles.headLineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          child: Center(child: Text("Upcoming")),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(50)),
                              color: Colors.white))),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          child: Center(child: Text("previous")),
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
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(0),
              ),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 16,
              ),
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firsttext: "UserName",
                        secondtext: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firsttext: "5221 456566",
                        secondtext: 'Passport',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 16,
              ),
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firsttext: "0055 44 77147",
                        secondtext: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firsttext: "B2SG28",
                        secondtext: 'Booking code',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 16,
              ),
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 20,
                                child: Image.asset('assets/image/visa.png'),
                              ),
                              Text(
                                '***2462',
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          Text(
                            "Payment method",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      AppColumnLayout(
                        firsttext: "\$249.99",
                        secondtext: 'Price',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
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
                                                color: Colors.grey.shade300)),
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
            /*Bar code Section*/
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/image/pngwing.com.png',
                  scale: 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(10),
            TicketView(ticket: ticketList[0]),
          ],
        ),
      ]),
    );
  }
}
