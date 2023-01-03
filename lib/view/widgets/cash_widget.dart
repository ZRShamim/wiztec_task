import 'package:flutter/material.dart';

import '../../components/colors/color.dart';
import '../../components/styles/custom_styles.dart';

class CashWidget extends StatelessWidget {
  const CashWidget({
    Key? key,
    required this.value,
    this.style = CustomStyles.poppins12MediumBlack,
    this.iconColor = CustomColor.black,
  }) : super(key: key);

  final String value;
  final TextStyle style;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/tk.png',
          width: 5.5,
          height: 7.5,
          color: iconColor,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          value,
          style: style,
        ),
      ],
    );
  }
}
