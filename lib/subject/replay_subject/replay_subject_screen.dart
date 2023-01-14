import 'package:flutter/material.dart';
import 'package:learnrx/extensions/commen_ext.dart';
import 'package:learnrx/subject/replay_subject/replay_subject_bloc.dart';

class ReplaySubjectScreen extends StatefulWidget {
  const ReplaySubjectScreen({Key? key}) : super(key: key);

  @override
  State<ReplaySubjectScreen> createState() => _ReplaySubjectScreenState();
}

class _ReplaySubjectScreenState extends State<ReplaySubjectScreen> {
  ReplaySubjectBloc replayBloc = ReplaySubjectBloc();
  @override
  Widget build(BuildContext context) {
    replayBloc.addListners();

    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
            stream: replayBloc.replaySubject.stream,
            builder: (context, snap) {
              return Text("Count ${snap.data}");
            },
          ),


          ElevatedButton(
            onPressed: () {
              replayBloc.addReplaySubject();
            },
            child: const Text("replay subject").padding(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10,
            ),
          ).paddingAll(15),

          Row(),
        ],
      ).safearea,
    );
  }

  @override
  void dispose() {
    replayBloc.dispose();
    super.dispose();
  }
}
