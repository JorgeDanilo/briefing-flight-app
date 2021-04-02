import 'package:briefing_flight/core/bloc_base.dart';
import 'package:flutter/cupertino.dart';

abstract class WidgetState<T extends StatefulWidget, B extends BlocBase>
    extends State<T> {

  B bloc;

  WidgetState() {
    
  }

  @override
  void dispose() {
    bloc.onDispose();
    super.dispose();
  }
}
