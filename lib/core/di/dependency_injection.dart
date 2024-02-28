import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mydoctor/core/networking/api_cosumer.dart';
import 'package:mydoctor/core/networking/dio_consumer.dart';
import 'package:mydoctor/features/login/data/repos/loginrepo.dart';
import 'package:mydoctor/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

setupGetit() {
  //Dio $ ApiService
  getIt.registerSingleton<ApiConsumer>(DioConsumer(dio: Dio()));
//login repo
  getIt.registerSingleton<LoginRepo>(LoginRepo(getIt.get<ApiConsumer>()));
//logincubit
  getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt()));
}

// LoginCubit(getIt.get<LoginRepo>())