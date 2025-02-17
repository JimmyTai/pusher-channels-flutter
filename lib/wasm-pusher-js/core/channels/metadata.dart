import 'dart:js_interop';

extension type Metadata._(JSObject _) implements JSObject {
  external Metadata({String? userId});

  @JS('user_id')
  external String? userId;
}
