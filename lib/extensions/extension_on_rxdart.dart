
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

extension extOnBehaviorSubject on BehaviorSubject{

  ///its extension function created by me on subject behaviour
  observe(Widget Function(AsyncSnapshot snap) func){
    return StreamBuilder(
      stream: stream,
      builder: (context, snap) {
        return func(snap);
      },
    );
  }

}

extension extOnPublishSubject on PublishSubject{

  ///its extension function created by me on subject behaviour
  observe(Widget Function(AsyncSnapshot snap) func){
    return StreamBuilder(
      stream: stream,
      builder: (context, snap) {
        return func(snap);
      },
    );
  }

}