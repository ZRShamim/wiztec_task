import 'package:flutter/material.dart';
import 'package:wiztec_project/components/colors/color.dart';
import 'package:wiztec_project/components/dimensions/dimensions.dart';

import '../components/strings/app_strings.dart';
import '../components/styles/custom_styles.dart';
import 'widgets/account_widget.dart';
import 'widgets/app_drawer.dart';
import 'widgets/invoice_widget.dart';
import 'widgets/left_table_box.dart';
import 'widgets/right_table_box.dart';
import 'widgets/table_header.dart';
import 'widgets/table_item_row.dart';
import 'widgets/table_row_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.tableData,
          style: CustomStyles.poppins16SemiBoldWhite,
        ),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: CustomDimensions.marginH16V12,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: CustomColor.colorMain,
                ),
              ),
              child: Column(
                children: [
                  _dueSection(),
                  _purchaseSection(),
                  _paymentSection(),
                  _returnSection(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              margin: CustomDimensions.marginH16,
              height: 50,
              decoration: BoxDecoration(
                color: CustomColor.colorMain,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_circle_outlined,
                    color: CustomColor.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppStrings.payTheBalance,
                    style: CustomStyles.poppins16SemiBoldWhite,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  TableRowWidget _returnSection() {
    return TableRowWidget(
      children: [
        LeftTableBox(
          child: Column(
            children: [
              const TableHeader(
                headerTxt: AppStrings.returnStr,
              ),
              const InvoiceWidget(),
              const InvoiceWidget(),
              Container(
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: CustomColor.colorMain,
                    ),
                  ),
                ),
                child: Column(
                  children: const [
                    TableItemsRow(
                      itemPrice: 50,
                      itemQuantity: 100,
                      itemname: AppStrings.testProduct01,
                    ),
                  ],
                ),
              ),
              const AccountWidget(
                title1: AppStrings.discount,
                amount1: '0',
                title2: AppStrings.vat,
                amount2: '0',
              ),
              const AccountWidget(
                title1: AppStrings.grandTotal,
                amount1: '5000',
                title2: AppStrings.previousDue,
                amount2: '20000',
              ),
              const AccountWidget(
                title1: AppStrings.totalAmount,
                amount1: '15000',
                title2: AppStrings.totalPayment,
                amount2: '0',
              ),
              const AccountWidget(
                title1: AppStrings.remainingBalance,
                amount1: '15000',
              ),
            ],
          ),
        ),
        const RightTableBox(
          value: '15000',
        ),
      ],
    );
  }

  TableRowWidget _paymentSection() {
    return TableRowWidget(
      children: [
        LeftTableBox(
          child: Column(
            children: const [
              TableHeader(
                headerTxt: AppStrings.payment,
              ),
              InvoiceWidget(),
              AccountWidget(
                title1: AppStrings.discount,
                amount1: '0',
                title2: AppStrings.vat,
                amount2: '0',
              ),
              AccountWidget(
                title1: AppStrings.grandTotal,
                amount1: '0',
                title2: AppStrings.previousDue,
                amount2: '30000',
              ),
              AccountWidget(
                title1: AppStrings.totalAmount,
                amount1: '30000',
                title2: AppStrings.totalPayment,
                amount2: '10000',
              ),
              AccountWidget(
                title1: AppStrings.remainingBalance,
                amount1: '20000',
              ),
            ],
          ),
        ),
        const RightTableBox(
          value: '20000',
        ),
      ],
    );
  }

  TableRowWidget _purchaseSection() {
    return TableRowWidget(
      children: [
        LeftTableBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TableHeader(
                headerTxt: AppStrings.purchase,
              ),
              const InvoiceWidget(),
              Container(
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: CustomColor.colorMain,
                    ),
                  ),
                ),
                child: Column(
                  children: const [
                    TableItemsRow(
                      itemPrice: 200,
                      itemQuantity: 200,
                      itemname: AppStrings.testProduct01,
                    ),
                    TableItemsRow(
                      itemPrice: 300,
                      itemQuantity: 20,
                      itemname: AppStrings.testProduct01,
                    ),
                    TableItemsRow(
                      itemPrice: 200,
                      itemQuantity: 20,
                      itemname: AppStrings.testProduct01,
                    ),
                  ],
                ),
              ),
              const AccountWidget(
                title1: AppStrings.discount,
                amount1: '0',
                title2: AppStrings.vat,
                amount2: '0',
              ),
              const AccountWidget(
                title1: AppStrings.grandTotal,
                amount1: '50000',
                title2: AppStrings.previousDue,
                amount2: '20000',
              ),
              const AccountWidget(
                title1: AppStrings.totalAmount,
                amount1: '70000',
                title2: AppStrings.totalPayment,
                amount2: '40000',
              ),
              const AccountWidget(
                title1: AppStrings.remainingBalance,
                amount1: '30000',
              ),
            ],
          ),
        ),
        const RightTableBox(
          value: '30000',
        ),
      ],
    );
  }

  TableRowWidget _dueSection() {
    return TableRowWidget(
      children: [
        LeftTableBox(
          child: Column(
            children: [
              const TableHeader(
                headerTxt: AppStrings.dues,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 15,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      AppStrings.previousDue,
                      style: CustomStyles.poppins14SemiBoldBlack,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '01 January 2022',
                      style: CustomStyles.poppins12RegularBlack,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const RightTableBox(
          value: '2000',
        ),
      ],
    );
  }
}
