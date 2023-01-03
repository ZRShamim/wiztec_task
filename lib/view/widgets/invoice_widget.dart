import 'package:flutter/material.dart';
import 'package:wiztec_project/components/dimensions/dimensions.dart';

import '../../components/colors/color.dart';
import '../../components/strings/app_strings.dart';
import '../../components/styles/custom_styles.dart';

class InvoiceWidget extends StatelessWidget {
  const InvoiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomDimensions.marginH16V12,
      decoration: BoxDecoration(
        color: CustomColor.colorPrimary,
        border: const Border(
          bottom: BorderSide(
            width: 0.5,
            color: CustomColor.colorMain,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                width: 70,
                child: Text(
                  AppStrings.invoiceDate,
                  style: CustomStyles.poppins12RegularBlack,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '01 January 2022',
                style: CustomStyles.poppins12SemiBoldBlack,
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                width: 70,
                child: Text(
                  AppStrings.invoiceNo,
                  style: CustomStyles.poppins12RegularBlack,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '5386328',
                style: CustomStyles.poppins12SemiBoldBlack,
              )
            ],
          ),
        ],
      ),
    );
  }
}
