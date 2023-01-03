import 'package:flutter/material.dart';

import '../../components/colors/color.dart';

class TableRowWidget extends StatelessWidget {
  const TableRowWidget({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: CustomColor.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: CustomColor.colorMain,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: children,
      ),
    );
  }
}
