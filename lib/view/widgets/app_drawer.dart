import 'package:flutter/material.dart';
import 'package:wiztec_project/components/colors/color.dart';
import 'package:wiztec_project/components/styles/custom_styles.dart';

import '../../components/strings/app_strings.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: CustomColor.colorMain,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: CustomColor.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    AppStrings.demoLimitedCompany,
                    style: CustomStyles.poppins18SemiBoldWhite,
                  ),
                )
              ],
            ),
          ),
          ExpansionTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text(
              AppStrings.purchase,
              style: CustomStyles.poppins14MediumInActive,
            ),
            trailing: Icon(
              isExpanded
                  ? Icons.expand_less_outlined
                  : Icons.expand_more_outlined,
            ),
            onExpansionChanged: (value) {
              setState(() {
                isExpanded = value;
              });
            },
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          AppStrings.purchaseList,
                          style: CustomStyles.poppins12MediumActive,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          AppStrings.orderList,
                          style: CustomStyles.poppins12MediumActive,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          AppStrings.vatList,
                          style: CustomStyles.poppins12MediumActive,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          AppStrings.productUnit,
                          style: CustomStyles.poppins12MediumActive,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          AppStrings.purchaseReport,
                          style: CustomStyles.poppins12MediumActive,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(
              AppStrings.sell,
              style: CustomStyles.poppins14MediumInActive,
            ),
            trailing: const Icon(
              Icons.expand_more_outlined,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.inventory_outlined),
            title: Text(
              AppStrings.stockInventory,
              style: CustomStyles.poppins14MediumInActive,
            ),
            trailing: const Icon(Icons.expand_more_outlined),
          ),
        ],
      ),
    );
  }
}
