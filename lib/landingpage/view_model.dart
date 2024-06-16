import 'package:flutter/material.dart';
import 'dart:convert'; 
import 'package:file_picker/file_picker.dart'; 
// import 'dart:convert'; 
// import 'dart:io'; 
// import 'package:file_picker/file_picker.dart'; 
import 'package:csv/csv.dart';
// import 'package:firebase_storage/firebase_storage.dart';

class LoadDataState extends ChangeNotifier {
  String dataset = '';
  String uploadMessage = "";
  List<List<dynamic>> csvTable = []; 


  pickFile() async {
    // get file
    final result = await FilePicker.platform.pickFiles(type: FileType.any, allowMultiple: false);

    if (result != null && result.files.isNotEmpty) {
      final fileName = result.files.first.name;
      
      uploadMessage = "Files loaded $fileName";
      
      dataset = utf8.decode((result.files.first.bytes)!.toList());
      print(fileName);
      print(dataset); 

      List<List<dynamic>> csvTable = const CsvToListConverter().convert(dataset);
      print(csvTable);

      notifyListeners();

    }
  }

}
