import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kk/core/utils/api_service.dart';
import 'package:kk/feature/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));
}
