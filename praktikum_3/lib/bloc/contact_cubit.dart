//contact_cubit.dart
// ignore_for_file: unused_import

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../../model/user.dart';
part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  List<User> user = [];

  void addContact({required String username, required int number}) {
    emit(ContactInitial());
    user.add(User(name: username, number: number));
    emit(ContactLoading());
    Future.delayed(
        const Duration(seconds: 3), () => emit(ContactLoaded(user: user)));
  }

  void removeUser({required int index}) {
    emit(ContactInitial());
    user.removeAt(index);
    if (user.isEmpty) {
      emit(ContactInitial());
    } else {
      emit(ContactLoaded(user: user));
    }
  }
}
