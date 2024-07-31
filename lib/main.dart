import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/cubit/home_layout_cubit.dart';

import 'Features/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeLayoutCubit>(
      create: (BuildContext context)=>HomeLayoutCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        home: Home() ,
      ),
    );
  }
}