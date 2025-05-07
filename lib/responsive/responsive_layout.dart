import 'package:doc_truyen/responsive/desktop_layout.dart';
import 'package:doc_truyen/responsive/mobile_layout.dart';
import 'package:doc_truyen/responsive/tablet_layout.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 500) {
          return MobileLayout();
        } else if (constraint.maxWidth < 1100) {
          return TabletLayout();
        } else {
          return DesktopLayout();
        }
      },
    );
  }
}