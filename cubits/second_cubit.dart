import 'package:flutter_bloc/flutter_bloc.dart';

class SecondCubit extends Cubit<int>{
  SecondCubit() : super(0);

  void increament() => emit(state + 1);
}

