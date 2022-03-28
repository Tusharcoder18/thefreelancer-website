import 'package:flutter/material.dart';

class AutoScroll {
  final scrollController = ScrollController();

  void scrollTo(double offset) {
    scrollController.animateTo(offset,
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }
}
