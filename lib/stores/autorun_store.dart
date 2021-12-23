import 'package:mobx/mobx.dart';

///run: flutter packages pub run build_runner watch
part 'autorun_store.g.dart';

class AutorunStore  = _AutorunStore with _$AutorunStore;

abstract class _AutorunStore with Store {
  @observable
  int counter = 0;
  late ReactionDisposer _dispose;

  @action
  void increment() => counter++;

  void setupReactions() {
    _dispose = autorun((_){
      // ignore: avoid_print
      print('Count is $counter');
    });
  }

  void dispose() {
    _dispose();
  }
}
