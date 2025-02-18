import 'dart:js_interop';

import 'channels.dart';
import 'channels/channel.dart';
import 'config.dart';
import 'connection/connection_manager.dart';
import 'events/dispatcher.dart';
import 'options.dart';
import 'timeline/timeline.dart';
import 'timeline/timeline_sender.dart';
import 'user.dart';

extension type Pusher._(JSObject _) implements JSObject {
  external Pusher(String appKey, Options options);

  /// STATIC PROPERTIES
  external static List<Pusher> instances;

  external static bool isRead;

  external static bool logToConsole;

  // static Runtime: AbstractRuntime;
  // static ScriptReceivers: any;
  // static DependenciesReceivers: any;
  // static auth_callbacks: any;

  external static void ready();

  external static void log(dynamic message);

  external static dynamic get getClientFeatures;

  external String key;

  external Config config;

  external Channels channels;

  @JS('global_emitter')
  external Dispatcher globalEmitter;

  @JS('sessionID')
  external num sessionId;

  external Timeline timeline;

  external TimelineSender timelineSender;

  external ConnectionManager connection;

  external UserFacade user;

  external Channel channel(String name);

  external List<Channel> allChannels();

  external void connect();

  external void disconnect();

  external Pusher bind(
    String eventName,
    Function callback, [
    dynamic context,
  ]);

  external Pusher unbind([
    String? eventName,
    Function? callback,
    dynamic context,
  ]);

  @JS('bind_global')
  external Pusher bindGlobal(Function callback);

  @JS('unbind_global')
  external Pusher unbindGlobal([Function? callback]);

  @JS('unbind_all')
  external void unbindAll();

  external void subscribeAll();

  external Channel subscribe(String channelName);

  external void unsubscribe(String channelName);

  @JS('send_event')
  external bool sendEvent(
    String eventName, [
    dynamic data,
    String? channel,
  ]);

  @JS('shouldUseTLS')
  external bool shouldUseTls();

  external void signin();
}
