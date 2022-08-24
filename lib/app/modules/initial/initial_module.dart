import 'package:up2/app/modules/initial/auth/auth_page.dart';
import 'package:up2/app/modules/initial/auth/auth_store.dart';
import 'package:up2/app/modules/initial/initial_Page.dart';
import 'package:up2/app/modules/initial/initial_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => AuthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => InitialPage()),
    ChildRoute('/auth', child: (_, args) => AuthPage()),
  ];
}
