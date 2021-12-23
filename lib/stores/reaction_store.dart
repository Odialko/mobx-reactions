import 'package:mobx/mobx.dart';

///run: flutter packages pub run build_runner watch
part 'reaction_store.g.dart';

class ReactionStore  = _ReactionStore with _$ReactionStore;

abstract class _ReactionStore with Store {
  @observable
  int counter = 0;

  late ReactionDisposer _dispose;

  @action
  void increment() => counter++;

  void setupReaction() {
    _dispose = reaction((_) => counter, (int val) {
      // ignore: avoid_print
      print('Reaction is: $val');
    });
  }

  void dispose() {
    _dispose();
  }
}
