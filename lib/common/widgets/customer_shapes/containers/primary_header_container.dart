import 'package:flutter/material.dart';
import 'package:payly_test/common/widgets/customer_shapes/containers/circular_container.dart';
import 'package:payly_test/common/widgets/customer_shapes/curved_edges/curved_edges_widget.dart';
import 'package:payly_test/utils/constants/colors.dart';

class YPrimaryHeaderContainer extends StatelessWidget {
  const YPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return YCurvedEdgeWidget(
      child: Container(
        color: YColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: YCircularContainer(
                backgroundColor: YColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: YCircularContainer(
                backgroundColor: YColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
