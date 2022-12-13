// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mypcot_assignment/application/home_provider/home_provider.dart'
    as _i5;
import 'package:mypcot_assignment/domain/home_repo.dart' as _i3;
import 'package:mypcot_assignment/infrastructure/imp_home_repo.dart' as _i4;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HomeRepo>(() => _i4.ImpHomeRepo());
    gh.factory<_i5.HomeProvider>(() => _i5.HomeProvider(gh<_i3.HomeRepo>()));
    return this;
  }
}
