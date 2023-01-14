import 'package:learnrx/extensions/commen_ext.dart';
import 'package:rxdart/rxdart.dart';

class PublishSubjectBloc{

  PublishSubject<int> publishSubject = PublishSubject<int>();


  int count = 0;
  void callpublishSubject() {
    count++;
    publishSubject.add(count);
  }

  void dispose() {
    publishSubject.close();
  }

  void addListner() {
    publishSubject.listen((value) {
      value.debugPrint;
    });
  }

}