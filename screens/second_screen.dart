import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes_flutter/cubits/second_cubit.dart';
import 'package:generated_routes_flutter/cubits/third_cubit.dart';
import 'package:generated_routes_flutter/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/third");
              /* Navigator.push(context, MaterialPageRoute(
                builder: (context)=> BlocProvider(
                  create: (context)=>ThirdCubit(),
                  child: const ThirdScreen())
              )); */
            },
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<SecondCubit, int>(
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
        BlocProvider.of<SecondCubit>(context).increament();
      },
      child: const Icon(Icons.add),
    ),
    );
  }
}
