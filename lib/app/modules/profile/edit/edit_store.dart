import 'package:mobx/mobx.dart';

part 'edit_store.g.dart';

class EditStore = _EditStoreBase with _$EditStore;
abstract class _EditStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}