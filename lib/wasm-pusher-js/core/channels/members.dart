import 'dart:js_interop';

extension type Members._(JSObject _) implements JSObject {
  external Members();

  external dynamic members;

  external num count;

  @JS('myID')
  external dynamic myId;

  external dynamic get(String id);

  external void each(Function callback);

  external void onSubscription(dynamic subscriptionData);

  external dynamic addMember(dynamic memberData);

  external dynamic removeMember(dynamic memberData);

  external void reset();
}
