import 'dart:js_interop';

import 'auth/deprecated_channel_authorizer.dart';

extension type Options._(JSObject _) implements JSObject {
  external Options();

  external num? activityTimeout;

  @Deprecated('Use channelAuthorization instead')
  external DeprecatedAuthOptions? auth;

  @Deprecated('Use channelAuthorization instead')
  external String? authEndpoint;

  /// Allow 'ajax' | 'jsonp'
  @Deprecated('Use channelAuthorization instead')
  external String? authTransport;

  @Deprecated('Use channelAuthorization instead')
  external ChannelAuthorizerGenerator? authorizer;

  // channelAuthorization?: ChannelAuthorizationOptions;

  // userAuthentication?: UserAuthenticationOptions;

  external String? cluster;

  external bool? enableStats;

  external bool? disableStats;

  // Allow 'ws' | 'wss' | 'xhr_streaming' | 'xhr_polling' | 'sockjs'
  external List<String>? disabledTransports;

  // Allow 'ws' | 'wss' | 'xhr_streaming' | 'xhr_polling' | 'sockjs'
  external List<String>? enabledTransports;

  external bool? forceTLS;

  external String? httpHost;

  external String? httpPath;

  external num? httpPort;

  external bool? ignoreNullOrigin;

  // nacl?: nacl;

  external num? pongTimeout;

  external String? statsHost;

  external dynamic timelineParams;

  external num? unavailableTimeout;

  external String? wsHost;

  external String? wsPath;

  external num? wsPort;

  external num? wssPort;
}
