import 'package:flutter/material.dart';

import '../../components/colors/color.dart';
import '../../components/dimensions/dimensions.dart';
import '../../components/strings/app_strings.dart';
import '../../components/styles/custom_styles.dart';
import 'cash_widget.dart';

class TableItemsRow extends StatelessWidget {
  const TableItemsRow({
    Key? key,
    required this.itemname,
    required this.itemQuantity,
    required this.itemPrice,
  }) : super(key: key);
  final String itemname;
  final int itemQuantity;
  final int itemPrice;

  @override
  Widget build(BuildContext context) {
    int total = itemQuantity * itemPrice;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: (MediaQuery.of(context).size.width - 40) * 0.50,
          padding: CustomDimensions.marginH16V12,
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 0.5,
                color: CustomColor.colorMain,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemname,
                style: CustomStyles.poppins12SemiBoldBlack,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$itemQuantity ${AppStrings.pcs} x $itemPrice',
                style: CustomStyles.poppins12RegularBlack,
              ),
            ],
          ),
        ),
        Container(
          width: (MediaQuery.of(context).size.width - 40) * 0.195,
          padding: CustomDimensions.marginH16V12,
          child: CashWidget(value: '$total'),
        ),
      ],
    );
  }
}
