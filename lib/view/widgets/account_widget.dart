import 'package:flutter/material.dart';

import '../../components/colors/color.dart';
import '../../components/dimensions/dimensions.dart';
import '../../components/styles/custom_styles.dart';
import 'cash_widget.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    Key? key,
    required this.title1,
    this.title2,
    required this.amount1,
    this.amount2,
  }) : super(key: key);
  final String title1;
  final String? title2;
  final String amount1;
  final String? amount2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: CustomColor.colorMain,
          ),
        ),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: (MediaQuery.of(context).size.width - 40) * 0.50,
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: CustomDimensions.marginH16,
                  child: Text(
                    title1,
                    style: CustomStyles.poppins12SemiBoldBlack,
                  ),
                ),
                if (title2 != null)
                  const SizedBox(
                    height: 7,
                  ),
                if (title2 != null)
                  Container(
                    padding: CustomDimensions.marginH16,
                    child: Text(
                      title2!,
                      style: CustomStyles.poppins12SemiBoldBlack,
                    ),
                  ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width - 40) * 0.195,
            padding: CustomDimensions.marginH16,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                CashWidget(value: amount1),
                if (title2 != null)
                  const SizedBox(
                    height: 7,
                  ),
                if (title2 != null) CashWidget(value: amount2!),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
