part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

// #SignUp
class AuthSignUpEvent extends AuthEvent{
  Map<String,Object?> data;

  AuthSignUpEvent({
    required this.data ,
});

  @override
  List<Object?> get props =>[data];
}

// #SignIn
class AuthSignInEvent extends AuthEvent{
  Map<String,Object?> data;

  AuthSignInEvent({required this.data,});

  @override
  List<Object?> get props =>[data];
}
