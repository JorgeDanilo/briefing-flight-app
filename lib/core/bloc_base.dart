import 'dart:async';

import 'package:briefing_flight/core/app_state.dart';

abstract class BlocBase {

  final StreamController<AppState> streamController =
      StreamController<AppState>.broadcast();

  Stream<AppState> get onStateChane => streamController.stream;

  void onDispose() {
    streamController.close();
  }
}
