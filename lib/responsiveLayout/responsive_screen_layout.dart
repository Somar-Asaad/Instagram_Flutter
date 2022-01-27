import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimenstions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constrains) {
      if (constrains.maxWidth > webScreenSize){
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
