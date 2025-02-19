import 'dart:js_interop';

import '../../error.dart';

extension type ChannelAuthorizationData._(JSObject _) implements JSObject {
  external ChannelAuthorizationData({
    String auth,
    String? channelData,
    String? sharedSecret,
  });

  external String auth;

  @JS('channel_data')
  external String? channelData;

  @JS('shared_secret')
  external String? sharedSecret;
}

extension type ChannelAuthorizationCallback._(JSFunction _) implements JSFunction {
  external void call(
    PusherError? error,
    ChannelAuthorizationData? authData,
  );
}
// typedef ChannelAuthorizationCallback = void Function(
//   Error? error,
//   ChannelAuthorizationData? authData,
// );

extension type ChannelAuthorizationRequestParams._(JSObject _)
    implements JSObject {
  external ChannelAuthorizationRequestParams({
    String socketId,
    String channelName,
  });

  external String socketId;

  external String channelName;
}

typedef ChannelAuthorizationHandler = void Function(
  ChannelAuthorizationRequestParams params,
  ChannelAuthorizationCallback callback,
);

extension type UserAuthenticationData._(JSObject _) implements JSObject {
  external UserAuthenticationData({
    String auth,
    String userData,
  });

  external String auth;

  @JS('user_data')
  external String userData;
}

extension type UserAuthenticationCallback._(JSObject _) implements JSObject {
  external void call(
    PusherError? error,
    UserAuthenticationData? authData,
  );
}

// typedef UserAuthenticationCallback = void Function(
//   PusherError? error,
//   UserAuthenticationData? authData,
// );

extension type UserAuthenticationRequestParams._(JSObject _)
    implements JSObject {
  external UserAuthenticationRequestParams({
    String socketId,
  });

  external String socketId;
}

extension type UserAuthenticationHandler._(JSObject _) implements JSObject {
  external void call(
    UserAuthenticationRequestParams params,
    UserAuthenticationCallback callback,
  );
}

// typedef UserAuthenticationHandler = void Function(
//   UserAuthenticationRequestParams params,
//   UserAuthenticationCallback callback,
// );

extension type AuthOptionsT<AuthHandler>._(JSObject _) implements JSObject {
  // Allow 'ajax' | 'jsonp'
  external String transport;

  external String endpoint;

  external JSAny params;

  external JSAny headers;

  external JSFunction? paramsProvider;

  external JSFunction? headersProvider;

  // external AuthHandler? customHandler;
}

typedef UserAuthenticationOptions = AuthOptionsT<UserAuthenticationHandler>;

typedef ChannelAuthorizationOptions = AuthOptionsT<ChannelAuthorizationHandler>;
