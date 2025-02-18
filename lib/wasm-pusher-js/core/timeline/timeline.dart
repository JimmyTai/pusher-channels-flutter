import 'dart:js_interop';

import 'level.dart';

extension type TimelineOptions._(JSObject _) implements JSObject {
  external TimelineOptions({
    TimelineLevel? level,
    num? limit,
    String? version,
    String? cluster,
    List<String>? features,
    dynamic params,
  });

  external TimelineLevel? level;

  external num? limit;

  external String? version;

  external String? cluster;

  external List<String>? features;

  external dynamic params;
}

extension type Timeline._(JSObject _) implements JSObject {
  external Timeline(
    String key,
    num session,
    TimelineOptions options,
  );

  external String key;

  external num session;

  external List<dynamic> events;

  external TimelineOptions options;

  external num sent;

  @JS('uniqueID')
  external num uniqueId;

  external void log(dynamic level, dynamic event);

  external void error(dynamic event);

  external void info(dynamic event);

  external void debug(dynamic event);

  external bool isEmpty();

  external bool send(dynamic sendfn, dynamic callback);

  @JS('generateUniqueID')
  external num generationUniqueId();
}
