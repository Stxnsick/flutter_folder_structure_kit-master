import 'package:flutter/cupertino.dart';
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
    return TCurvedEdgesWidgets(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              // Background circular decorations
              Positioned(top: -150, right: -250,
                  child: TCircularContainer(backgroundColor: TColors.secondary.withOpacity(0.3))),
              Positioned(top: 100, right: -300,
                  child: TCircularContainer(backgroundColor: TColors.secondary.withOpacity(0.3))),
          
              // Actual content (the child widget)
              SizedBox(
                width: double.infinity,
                height: 400,
                child: child, // This is where your content goes
              ),
            ],
          ),
        ),
      ),
    );
  }
}