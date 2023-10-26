import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/domain/model/user_model.dart';

part 'user_token_event.dart';
part 'user_token_state.dart';

class UserTokenBloc extends Bloc<UserTokenEvent, UserTokenState> {
  UserTokenBloc() : super(UserTokenInitial()) {
    on<UserTokenGetEvent>(_userToken);
  }

  void _userToken(UserTokenGetEvent event,Emitter emit) async{
    emit(UserTokenLoading());

    final data =await HttpService.userToken();
    // print("Data:==>:::$data:::<==");
    if(data.isNotEmpty){
      emit(UserTokenSuccess(data: data));
    }else{
      emit(UserTokenFailure());
    }
  }

}
