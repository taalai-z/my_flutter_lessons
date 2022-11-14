import 'package:cubit_1/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ColorCubit, ColorStates>(
          builder: (context, state) {
            if (state is ColorLoadingState) {
              return CircularProgressIndicator();
            }
            return Container(
              height: 300,
              width: 300,
              color: state.color,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ColorCubit>(context).changeColor(Colors.red);
            },
            backgroundColor: Colors.red,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ColorCubit>(context).changeColor(Colors.green);
            },
            backgroundColor: Colors.green,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ColorCubit>(context).changeColor(Colors.blue);
            },
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
