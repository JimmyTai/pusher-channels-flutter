import 'dart:js_interop';

import '../channels/channel.dart';
import 'options.dart';

extension type DeprecatedChannelAuthorizerAuthorize._(JSObject _)
    implements JSObject {
  external void call(
    String socketId,
    ChannelAuthorizationCallback callback,
  );
}

extension type DeprecatedChannelAuthorizer._(JSObject _) implements JSObject {
  external DeprecatedChannelAuthorizer({
    DeprecatedChannelAuthorizerAuthorize authorize,
  });

  external DeprecatedChannelAuthorizerAuthorize authorize;
}

extension type ChannelAuthorizerGenerator._(JSObject _) implements JSObject {
  external DeprecatedChannelAuthorizer call(
      Channel channel, DeprecatedAuthorizerOptions options);
}

// typedef ChannelAuthorizerGenerator = DeprecatedChannelAuthorizer Function(
//     Channel channel, DeprecatedAuthorizerOptions options);

extension type DeprecatedAuthorizerOptions(JSObject _) implements JSObject {
  /// Allow 'ajax' | 'jsonp'
  external String authTransport;

  external String authEndpoint;
}

extension type DeprecatedAuthOptions(JSObject _) implements JSObject {
  external JSAny params;

  external JSAny headers;
}
