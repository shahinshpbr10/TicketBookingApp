import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const TextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Icon(icon),
          const Gap(10),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
