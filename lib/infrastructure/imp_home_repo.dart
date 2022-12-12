import 'package:injectable/injectable.dart';
import 'package:mypcot_assignment/domain/home_entity.dart';
import 'package:mypcot_assignment/domain/home_repo.dart';

@LazySingleton(as: HomeRepo)
class ImpHomeRepo extends HomeRepo {
  ImpHomeRepo(/* this._apiClient */);
  // final APIClient _apiClient;

  @override
  Future<HomeEntity> getHomeData() {
    // _apiClient.getHomeData();
    throw UnimplementedError();
  }
}
