import 'dart:js_interop';

@JS('Error')
extension type PusherError._(JSObject _) implements JSObject {
  external PusherError({String name, String message, String? stack});

  external String name;
  external String message;
  external String? stack;
}
