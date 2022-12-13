import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mypcot_assignment/domain/home_entity.dart';
import 'package:mypcot_assignment/domain/home_repo.dart';

@injectable
class HomeProvider with ChangeNotifier {
  HomeProvider(
    this.repo,
  );
  final HomeRepo repo;

  HomeEntity homeEntity = HomeEntity();

  void setState() {
    notifyListeners();
  }

  Future<void> getHomeData() async {
    homeEntity = await repo.getHomeData();
    notifyListeners();
  }
}
