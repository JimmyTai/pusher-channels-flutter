import 'dart:js_interop';

extension type PusherEvent._(JSObject _) implements JSObject {
  external PusherEvent({
    String event,
    String? channel,
    dynamic data,
    String? userId,
  });

  external String event;

  external String? channel;

  external dynamic data;

  @JS('user_id')
  external String? userId;
}
