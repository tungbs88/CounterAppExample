import 'package:counter_app_example/blocs/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events/counter_event.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Two actions/events here",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                child: TextButton(
                    onPressed: () {
                      context
                          .read<CounterBloc>()
                          .add(CounterEvent.increment);
                    },
                    child: Text(
                      "Increment(+)",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
                decoration: BoxDecoration(color: Colors.greenAccent),
                margin: EdgeInsets.all(10),
              ),
              Text("Result: $state",
                  style: TextStyle(fontSize: 40, color: Colors.blue)),
              Container(
                  child: TextButton(
                      onPressed: () {
                        context
                            .read<CounterBloc>()
                            .add(CounterEvent.decrement);
                      },
                      child: Text(
                        "Decrement(+)",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                  decoration: BoxDecoration(color: Colors.redAccent),
                  margin: EdgeInsets.all(10))
            ],
          );
        },
      )),
    );
  }
}
