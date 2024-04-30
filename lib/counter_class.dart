import 'package:flutter/material.dart' ;
import 'package:provider/provider.dart';
import 'package:first/providers/counter_provider.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  late CounterProvider _provider ;

  @override
  void initState() {
      _provider = Provider.of<CounterProvider>(context, listen: false);
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of(context, listen: true) ;
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Center(child: Text("Counter: ${_provider.counter}")),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          _provider.decrement();
                        },
                        child: Icon(Icons.minimize),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _provider.increment();
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
