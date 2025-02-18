import 'dart:js_interop';

import 'auth/options.dart';

/// Allow 'ws' | 'wss' | 'xhr_streaming' | 'xhr_polling' | 'sockjs'
typedef Transport = String;

extension type Config._(JSObject _) implements JSObject {
  external num activityTimeout;

  external bool enableStats;

  external String httpHost;

  external String httpPath;

  external num httpPort;

  external num httpsPort;

  external num pongTimeout;

  external String statsHost;

  external num unavailableTimeout;

  @JS('useTLS')
  external bool useTls;

  external String wsHost;

  external String wsPath;

  external num wsPort;

  external num wssPort;

  external UserAuthenticationHandler userAuthenticator;

  external ChannelAuthorizationHandler channelAuthorizer;

  @JS('forceTLS')
  external bool? forceTls;

  external String? cluster;

  external List<Transport>? disabledTransports;

  external List<Transport>? enabledTransports;

  external bool? ignoreNullOrigin;

  // external Nacl? nacl;

  external dynamic timelineParams;
}
