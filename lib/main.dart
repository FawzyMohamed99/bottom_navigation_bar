import 'package:bottom_navigation_bar/Screen/home_screen/home_screen.dart';
import 'package:bottom_navigation_bar/Screen/layout_screeen.dart';
import 'package:bottom_navigation_bar/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>LayoutCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fashion',
        home: LayoutScreen(),
      ),
    );
  }
}

