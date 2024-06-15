import 'package:flutter/material.dart';
import 'package:ideal_portfolio/homepage/view_model.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override 
  Widget build(BuildContext context) {

    final hpState = context.watch<MyHomePageState>();
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              hpState.counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {hpState.loadFiles();},
              child: const Text('Load files'),
            ),
            Text(hpState.uploadMessage)
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){hpState.incrementCounter();},
        // onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}