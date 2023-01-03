import 'package:flutter/material.dart';

import '../../components/colors/color.dart';
import '../../components/strings/app_strings.dart';
import '../../components/styles/custom_styles.dart';
import 'cash_widget.dart';

class RightTableBox extends StatelessWidget {
  const RightTableBox({
    Key? key,
    required this.value,
  }) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Text(
            AppStrings.due,
            style: CustomStyles.poppins12MediumBlack,
          ),
          const SizedBox(
            height: 5,
          ),
          CashWidget(
            value: value,
            style: CustomStyles.poppins12SemiBoldOrange,
            iconColor: CustomColor.orange48,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
