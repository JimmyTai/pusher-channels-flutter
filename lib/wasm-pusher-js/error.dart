import 'dart:js_interop';

extension type Error(JSObject _) implements JSObject {
  external String name;
  external String message;
  external String? stack;
}
