import 'package:flutter/material.dart';

import '../../components/colors/color.dart';
import '../../components/styles/custom_styles.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    Key? key,
    required this.headerTxt,
  }) : super(key: key);

  final String headerTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      width: double.infinity,
      color: CustomColor.colorMain,
      child: Text(
        headerTxt,
        style: CustomStyles.poppins14SemiBoldWhite,
      ),
    );
  }
}
