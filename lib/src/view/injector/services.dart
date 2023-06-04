import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'services.config.dart';

@InjectableInit()
class Services {
  static final getIt = GetIt.instance;

  static Future<GetIt> inject() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );

    return getIt.init(environment: Environment.prod);
  }
}
