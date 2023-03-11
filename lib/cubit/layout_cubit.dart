import 'package:bottom_navigation_bar/Screen/cart_screen/cart_screen.dart';
import 'package:bottom_navigation_bar/Screen/category_screen/category_screen.dart';
import 'package:bottom_navigation_bar/Screen/favorites_screen/favorites_screen.dart';
import 'package:bottom_navigation_bar/Screen/home_screen/home_screen.dart';
import 'package:bottom_navigation_bar/Screen/profile_screen/profile_screen.dart';
import 'package:bottom_navigation_bar/cubit/layout_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int bottomNavIndex = 0;
  List<Widget> layoutScreen=[HomeScreen(),CategoryScreen(),FavoritesScreen(),CartScreen(),ProfileScreen()];

  void changeButtonNav({required int index}) {
    bottomNavIndex = index;
    emit(ChangeBottomNavIndexState());
  }
}
