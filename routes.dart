import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes_flutter/cubits/first_cubit.dart';
import 'package:generated_routes_flutter/cubits/second_cubit.dart';
import 'package:generated_routes_flutter/cubits/third_cubit.dart';
import 'package:generated_routes_flutter/screens/first_screen.dart';
import 'package:generated_routes_flutter/screens/second_screen.dart';
import 'package:generated_routes_flutter/screens/third_screen.dart';

class Routes{

  static Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case "/first": return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context)=> FirstCubit(),
          child: FirstScreen(),
          )); 
      case "/second": return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context)=> SecondCubit(),
          child: SecondScreen(),
          )); 
      case "/first": return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context)=> ThirdCubit(),
          child: ThirdScreen(),
          )); 

      default: return null;    
    }
  }
}
