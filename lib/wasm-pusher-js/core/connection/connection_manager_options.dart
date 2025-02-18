import 'dart:js_interop';

import '../strategies/strategy.dart';
import '../timeline/timeline.dart';

extension type ConnectionManagerOptions._(JSObject _) implements JSObject {
  external Timeline timeline;

  external Strategy Function(dynamic strategyOptions) getStrategy;

  external num unavailableTimeout;

  external num pongTimeout;

  external num activityTimeout;

  @JS('useTLS')
  external bool useTls;
}

