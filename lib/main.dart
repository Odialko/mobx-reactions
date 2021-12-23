import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_test_app/stores/autorun_store.dart';
import 'package:mobx_test_app/stores/reaction_store.dart';
import 'package:mobx_test_app/stores/when_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final store = AutorunStore();
  // final store = ReactionStore();
  final store = WhenStore();


  @override
  void dispose() {
    // store.dispose(); /// for When reaction does not need
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // store.setupReactions(); ///setup autorun reaction in MobX
    // store.setupReaction(); ///setup reaction reaction in MobX
    store.setupWhenReaction(); ///setup when reaction in MobX

    return Scaffold(
      appBar: AppBar(
        title: const Text('tro-lo-lo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (_) {
              return Text(
                '${store.counter}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),


          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: store.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),

          FloatingActionButton(
            onPressed: store.decrement,
            tooltip: 'decrement',
            child: const Icon(Icons.vertical_align_bottom),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: store.increment,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
