import 'package:mypcot_assignment/application/home_provider/home_provider.dart';
import 'package:mypcot_assignment/injection.dart';
import 'package:provider/provider.dart';

final List providers = [
  ChangeNotifierProvider<HomeProvider>(
    create: (context) => getIt<HomeProvider>(),
    lazy: false,
  ),
];
