import 'package:learnrx/extensions/commen_ext.dart';
import 'package:rxdart/rxdart.dart';

class DemoBloc {
  BehaviorSubject<int> behaviorSubject = BehaviorSubject<int>.seeded(0);

  DemoBloc(){
    behaviorSubject.stream.listen((event) {
      print('$event');
      //event.debugPrint;
    });
  }

  int count =0;

  void subjectBehaviour() {
    count++;
    behaviorSubject.add(count);
  }

  void dispose() {
    behaviorSubject.close();
  }

  void setListner() {
    behaviorSubject.stream.listen((event) {
      event.debugPrint;
    });
  }
}
