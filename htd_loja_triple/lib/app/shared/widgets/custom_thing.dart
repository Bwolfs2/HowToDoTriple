import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:asuka/asuka.dart' as asuka;

class CustomThing<TStore extends Store<TError, TState>, TError extends Object,
    TState extends Object> extends ScopedBuilder<TStore, TError, TState> {
  CustomThing(
      {Key? key,
      Widget Function(BuildContext context, TState state)? onState,
      Widget Function(BuildContext context, TError? error)? onError,
      required TStore store})
      : super(key: key, onState: onState, onError: onError, store: store) {
    store.observer(onError: (error) {
      asuka.showSnackBar(SnackBar(content: Text(error.toString())));
    });
  }

  @override
  Widget Function(BuildContext context) get onLoading =>
      (context) => Center(child: CircularProgressIndicator());
}
