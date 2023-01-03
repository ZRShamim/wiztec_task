import 'package:flutter/material.dart';

import '../../components/colors/color.dart';

class LeftTableBox extends StatelessWidget {
  const LeftTableBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 35) * 0.75,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 0.5,
            color: CustomColor.colorMain,
          ),
        ),
      ),
      child: child,
    );
  }
}
