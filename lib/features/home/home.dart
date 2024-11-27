import 'package:flutter/material.dart';
import 'package:payly_test/common/widgets/appbar/appbar.dart';
import 'package:payly_test/utils/constants/sizes.dart';
import 'package:payly_test/common/widgets/customer_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          children: [
            /// Header --
            YPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  YAppBar(),
                  SizedBox(height: YSizes.spaceBtwSections*2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}