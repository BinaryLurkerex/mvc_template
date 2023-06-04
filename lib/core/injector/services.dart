import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'services.config.dart';

@InjectableInit()
class Services {
  static final getIt = GetIt.instance;

  @InjectableInit(initializerName: 'prod')
  static void injectProd() => getIt.init(environment: Environment.prod);

  @InjectableInit(initializerName: 'dev')
  static void injectDev() => getIt.init(environment: Environment.dev);
}
