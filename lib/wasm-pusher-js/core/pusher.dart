import 'dart:js_interop';

import 'options.dart';

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
}
