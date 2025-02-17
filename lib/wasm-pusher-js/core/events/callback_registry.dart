import 'dart:js_interop';

import 'callback.dart';
import 'callback_table.dart';

extension type CallbackRegistry._(JSObject _) implements JSObject {
  external CallbackRegistry();

  @JS('_callbacks')
  external CallbackTable callbacks;

  external JSArray<Callback> get(JSString name);

  external void add([JSString name, JSFunction callback, dynamic context]);

  external void remove([String? name, JSFunction? callback, dynamic context]);
}
