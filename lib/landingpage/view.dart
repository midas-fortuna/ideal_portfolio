import 'package:flutter/material.dart';
import 'package:ideal_portfolio/landingpage/view_model.dart';
// import 'package:ideal_portfolio/navigationrail/view.dasrt';
import 'package:provider/provider.dart';
// import 'dart:convert'; 
// import 'dart:io'; 
// import 'package:file_picker/file_picker.dart'; 
// import 'package:csv/csv.dart';
// import 'package:firebase_storage/firebase_storage.dart';



class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LoadPortfolio(),
            const DisplayOrders(),
          ],
        );
  }
}



class LoadPortfolio extends StatelessWidget {
  const LoadPortfolio({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final loadDataState = context.watch<LoadDataState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () async { await loadDataState.pickFile();},
          child: const Text('Load portfolio (csv file)'),
        ),
        Text(loadDataState.uploadMessage),
        Text(loadDataState.dataset),
      ],
    );
  }
}

class DisplayOrders extends StatelessWidget {
  const DisplayOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Role',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Rama')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Shyama')),
            DataCell(Text('25')),
            DataCell(Text('Software Engineer')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Shiva')),
            DataCell(Text('32')),
            DataCell(Text('Product Manager')),
          ],
        ),
      ],
    );
  }
}
