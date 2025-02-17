import 'dart:js_interop';

import '../channels/metadata.dart';
import 'callback_registry.dart';

extension type Dispatcher._(JSObject _) implements JSObject {
  external Dispatcher([Function? failThrough]);

  external CallbackRegistry callbacks;

  @JS('global_callbacks')
  external JSArray<JSFunction> globalCallbacks;

  external JSFunction failThrough;

  external Dispatcher bind(String eventName, Function callback,
      [dynamic context]);

  @JS('bind_global')
  external Dispatcher bindGlobal(Function callback);

  external Dispatcher unbind(
      [String? eventName, Function? callback, dynamic context]);

  @JS('unbind_global')
  external Dispatcher unbindGlobal([Function? callback]);

  @JS('unbind_all')
  external Dispatcher unbindAll();

  external Dispatcher emit(String eventName,
      [dynamic data, Metadata? metadata]);
}
