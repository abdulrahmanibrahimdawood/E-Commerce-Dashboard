import 'package:e_commerce_dashboard/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(String text) {
  return AppBar(
    title: Text(text, style: TextStyles.semiBold16.copyWith(fontSize: 20)),
    centerTitle: true,
  );
}
