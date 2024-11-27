import 'package:flutter/material.dart';

import 'curved_edges.dart';

class YCurvedEdgeWidget extends StatelessWidget {
  const YCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: YCustomCurvedEdges(),
      child: child,
    );
  }
}