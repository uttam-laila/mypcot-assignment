import 'package:mypcot_assignment/domain/home_entity.dart';

abstract class HomeRepo {
  Future<HomeEntity> getHomeData();
}
