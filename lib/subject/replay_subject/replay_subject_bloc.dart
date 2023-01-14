import 'package:learnrx/extensions/commen_ext.dart';
import 'package:rxdart/rxdart.dart';

class ReplaySubjectBloc {


  ReplaySubject replaySubject = ReplaySubject(  );
  int count = 0;

  void addReplaySubject() {
    count++;
    replaySubject.add(count);
  }

  addListners(){
    replaySubject.stream.listen((value) {
      value.toString().debugPrint;
    });
  }

  void dispose() {
    replaySubject.close();
  }
}
