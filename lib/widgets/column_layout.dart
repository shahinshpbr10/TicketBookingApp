import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking_app/utils/app_style.dart';

import '../utils/app_layout.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firsttext;
  final String secondtext;
  const AppColumnLayout(
      {super.key,
      required this.firsttext,
      required this.secondtext,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firsttext,
          style: Styles.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondtext,
          style: Styles.headLineStyle4,
        )
      ],
    );
  }
}
