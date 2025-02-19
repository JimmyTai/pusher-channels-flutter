import 'dart:js_interop';

import 'callback.dart';

extension type CallbackRegistry._(JSObject _) implements JSObject {
  external CallbackRegistry();

  @JS('_callbacks')
  external JSObject callbacks;

  external JSArray<Callback> get(JSString name);

  external void add([JSString name, JSFunction callback, JSAny context]);

  external void remove([String? name, JSFunction? callback, JSAny context]);
}
