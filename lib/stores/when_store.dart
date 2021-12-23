import 'package:mobx/mobx.dart';

///run: flutter packages pub run build_runner watch
part 'when_store.g.dart';

class WhenStore  = _WhenStore with _$WhenStore;

abstract class _WhenStore with Store {
  @observable
  int counter = 0;
  late ReactionDisposer _disposer;

  @action
  void increment() => counter++;

  /// second time it would not work
  @action
  void decrement() => counter--;

  void setupWhenReaction() {
    _disposer = when((_) => counter == 5, () {
      // ignore: avoid_print
      print('Count only when == 5: $counter');
    });
  }
}
