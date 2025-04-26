import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return IntrinsicHeight(
              child: Stack(
                children: [
                  // Background circular decorations
                  Positioned(
                    top: -150,
                    right: -250,
                    child: TCircularContainer(
                      backgroundColor: TColors.secondary.withOpacity(0.3),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: -300,
                    child: TCircularContainer(
                      backgroundColor: TColors.secondary.withOpacity(0.3),
                    ),
                  ),

                  // Actual content (the child widget)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20), // Add some bottom padding
                    child: child,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}