import 'package:flutter/cupertino.dart';
import 'package:wiztec_project/components/colors/color.dart';

class CustomStyles {
  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _semiBold = FontWeight.w600;

  static const TextStyle poppins14MediumActive = TextStyle(
    color: CustomColor.colorMain,
    fontWeight: _medium,
    fontSize: 14,
  );

  static const TextStyle poppins12MediumActive = TextStyle(
    color: CustomColor.colorMain,
    fontWeight: _medium,
    fontSize: 12,
  );

  static TextStyle poppins14MediumInActive = TextStyle(
    color: CustomColor.blackWithOp60,
    fontWeight: _medium,
    fontSize: 14,
  );

  static const TextStyle poppins12MediumBlack = TextStyle(
    color: CustomColor.black,
    fontSize: 12,
    fontWeight: _medium,
  );

  static const TextStyle poppins12SemiBoldBlack = TextStyle(
    color: CustomColor.black,
    fontSize: 12,
    fontWeight: _semiBold,
  );

  static const TextStyle poppins12SemiBoldOrange = TextStyle(
    color: CustomColor.orange48,
    fontSize: 12,
    fontWeight: _semiBold,
  );

  static const TextStyle poppins12RegularBlack = TextStyle(
    color: CustomColor.black,
    fontSize: 12,
    fontWeight: _regular,
  );

  static const TextStyle poppins14MediumWhite = TextStyle(
    color: CustomColor.white,
    fontSize: 14,
    fontWeight: _medium,
  );

  static const TextStyle poppins16SemiBoldWhite = TextStyle(
    fontSize: 16,
    color: CustomColor.white,
    fontWeight: _semiBold,
  );

  static const TextStyle poppins14SemiBoldWhite = TextStyle(
    fontSize: 14,
    color: CustomColor.white,
    fontWeight: _semiBold,
  );

  static const TextStyle poppins14SemiBoldBlack = TextStyle(
    fontSize: 14,
    color: CustomColor.black,
    fontWeight: _semiBold,
  );

  static const TextStyle poppins18SemiBoldWhite = TextStyle(
    fontSize: 18,
    color: CustomColor.white,
    fontWeight: _semiBold,
  );
}
