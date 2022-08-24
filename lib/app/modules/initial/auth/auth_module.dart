import 'package:up2/app/modules/initial/auth/auth_Page.dart';
import 'package:up2/app/modules/initial/auth/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../home/home_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AuthPage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}
