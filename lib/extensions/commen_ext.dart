import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

extension extOnWidget on Widget {
  padding({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0.0,
        right: right ?? 0.0,
        top: top ?? 0.0,
        bottom: bottom ?? 0.0,
      ),
      child: this,
    );
  }

  paddingAll(double all,) {
    return Padding(
      padding: EdgeInsets.all(all),
      child: this,
    );
  }

  paddingSymatric({
    double? verticle,
    double? horizontal,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticle ?? 0.0,
        horizontal: horizontal ?? 0.0,
      ),
      child: this,
    );
  }


  get safearea{
    return SafeArea(child: this);
  }
}


extension extOnString on String{

  get debugPrint{
    print("==>  ${this}");
  }

}


extension extOnDynamic on dynamic{

  get debugPrint{
    print("==>  ${this.toString()}");
  }

}


///extension on stream

