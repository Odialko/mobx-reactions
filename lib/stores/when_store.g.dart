// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'when_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WhenStore on _WhenStore, Store {
  final _$counterAtom = Atom(name: '_WhenStore.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_WhenStoreActionController = ActionController(name: '_WhenStore');

  @override
  void increment() {
    final _$actionInfo =
        _$_WhenStoreActionController.startAction(name: '_WhenStore.increment');
    try {
      return super.increment();
    } finally {
      _$_WhenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo =
        _$_WhenStoreActionController.startAction(name: '_WhenStore.decrement');
    try {
      return super.decrement();
    } finally {
      _$_WhenStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
