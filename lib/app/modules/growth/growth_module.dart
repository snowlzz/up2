import 'package:up2/app/modules/growth/growth_Page.dart';
import 'package:up2/app/modules/growth/growth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GrowthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GrowthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const GrowthPage()),
  ];
}
