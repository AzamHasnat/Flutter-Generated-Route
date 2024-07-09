import 'package:flutter/material.dart';
import 'package:generated_routes_flutter/cubits/first_cubit.dart';
import 'package:generated_routes_flutter/cubits/second_cubit.dart';
import 'package:generated_routes_flutter/screens/second_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second");

              /* Navigator.push(context, MaterialPageRoute(
                builder: (context)=> BlocProvider(
                  create: (context)=>SecondCubit(),
                  child: const SecondScreen())
              )); */
            },
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<FirstCubit, int>(
            builder: (context,state){
              return Text(state.toString(),
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
                ));
            }
          ),
          )
        ),
    
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        BlocProvider.of<FirstCubit>(context).increament();
      },
      child: const Icon(Icons.add),
    ),
    );
  }
}
