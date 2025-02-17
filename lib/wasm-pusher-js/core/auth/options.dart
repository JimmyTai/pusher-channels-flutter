import 'dart:js_interop';

extension type ChannelAuthorizationData._(JSObject _) implements JSObject {
  external String auth;

  @JS('channel_data')
  external String? channelData;

  @JS('shared_secret')
  external String? sharedSecret;
}

typedef ChannelAuthorizationCallback = (
  Error? error,
  ChannelAuthorizationData? authData
);
