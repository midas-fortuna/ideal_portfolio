import 'package:flutter/material.dart';


class MyHomePageState extends ChangeNotifier {
  int counter = 42;
  String uploadMessage = "";

  void incrementCounter() {
    counter++;
    uploadMessage = "";
    notifyListeners();
  }

  void loadFiles() {
    uploadMessage = "Files loaded";
    notifyListeners();
  }

}