import 'dart:js_interop';

import '../channels/channel.dart';
import 'options.dart';

extension type DeprecatedChannelAuthorizer(JSObject _) implements JSObject {
  external void authorize(
      String socketId, ChannelAuthorizationCallback callback);
}

typedef ChannelAuthorizerGenerator = DeprecatedChannelAuthorizer Function(
    Channel channel, DeprecatedAuthorizerOptions options);

extension type DeprecatedAuthorizerOptions(JSObject _) implements JSObject {
  /// Allow 'ajax' | 'jsonp'
  external String authTransport;

  external String authEndpoint;
}

extension type DeprecatedAuthOptions(JSObject _) implements JSObject {
  external dynamic params;

  external dynamic headers;
}
