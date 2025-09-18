import 'package:flutter/material.dart';

class NavigationService {
  BuildContext? _context;

  BuildContext? get context => _context;

  setContext(BuildContext? ctx) {
    _context = ctx;
  }
}
