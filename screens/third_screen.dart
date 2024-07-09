import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes_flutter/cubits/first_cubit.dart';
import 'package:generated_routes_flutter/cubits/third_cubit.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> BlocProvider(
                  create: (context)=>FirstCubit(),
                  child: const ThirdScreen())
              ));
            },
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<ThirdCubit, int>(
            builder: (context,state){
              return Text(state.toString(),style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
                ));
            }
          ),
          )
        ),
    
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        BlocProvider.of<ThirdCubit>(context).increament();
      },
      child: const Icon(Icons.add),
    ),
    );
  }
}
