import 'package:counter_app_example/blocs/counter_bloc.dart';
import 'package:counter_app_example/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Stream<int> aStreamFunction() async* {
    yield 2;
    yield 5;
    yield 7;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final aStream = aStreamFunction();
    aStream.forEach((element) {
      print("yield -> $element");
    });

    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}
