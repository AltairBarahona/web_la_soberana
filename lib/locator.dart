// ignore: import_of_legacy_library_into_null_safe
import 'package:get_it/get_it.dart';
import 'package:web_la_soberana/services/navigator_service.dart';

GetIt locator = GetIt.instance;

/*Proveedor de Singleton para manejar el navigationKey sin que se 
cree una nueva instancia cada vez que lo llamo */
void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
