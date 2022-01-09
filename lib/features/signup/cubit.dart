import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/dio_helper/dio_helper.dart';
import 'package:e_commerce_app/core/routes/magic_router.dart';
import 'package:e_commerce_app/features/signup/states.dart';
import 'package:e_commerce_app/features/welcome_scr/view.dart';
import 'package:e_commerce_app/widget/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInt());

  static SignUpCubit of(context) => BlocProvider.of(context);

  late String email;
  late String name;
  late String password;
  final formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    if (!formKey.currentState!.validate()) return null;
    formKey.currentState!.save();
    emit(SignUploading());
    final body = {
      "email": email,
      "password": password,
      "returnSecureToken": true
    };
    try {
      final response = await DioHelper.post('signUp', data: body);
      if (response.statusCode == 200) {
        // await AppStorage.cacheUserData(email: email, apiToken: response.data['idToken'], uid: response.data['localId']);
        MagicRouter.navigateAndPopAll(const WelcomeView());
      } else {
        showSnackBar(response.data['error']['message'], isError: true);
      }
    } on DioError catch (e) {
      showSnackBar(e.message, isError: true);
    } catch (e) {
      showSnackBar(e.toString(), isError: true);
    }
    emit(SignUpInt());
  }
}
