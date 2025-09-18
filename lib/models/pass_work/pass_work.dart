import 'package:flutter/material.dart';

class DataLink {
  final String id;
  final TextEditingController controller;
  DataLink({
    required this.id,
    required this.controller,
  });
}

class ModelFile {
  final String path;
  final Widget icon;
  final String name;
  ModelFile({
    required this.path,
    required this.icon,
    required this.name,
  });
}
