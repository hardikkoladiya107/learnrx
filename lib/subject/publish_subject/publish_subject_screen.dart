import 'package:flutter/material.dart';
import 'package:learnrx/extensions/commen_ext.dart';
import 'package:learnrx/extensions/extension_on_rxdart.dart';
import 'package:learnrx/subject/publish_subject/publish_subject_bloc.dart';

class PublishSubjectScreen extends StatefulWidget {
  const PublishSubjectScreen({Key? key}) : super(key: key);

  @override
  State<PublishSubjectScreen> createState() => _PublishSubjectScreenState();
}

class _PublishSubjectScreenState extends State<PublishSubjectScreen> {
  PublishSubjectBloc subjectBloc = PublishSubjectBloc();

  @override
  Widget build(BuildContext context) {
    subjectBloc.addListner();
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
            stream: subjectBloc.publishSubject.stream,
            builder: (context, snap) {
              return Text("Count ${snap.data}");
            },
          ),
          subjectBloc.publishSubject.observe((snap) {
              return Text("Count ${snap.data}");
            },
          ),
          ElevatedButton(
            onPressed: () {
              subjectBloc.callpublishSubject();
            },
            child: const Text("publish subject").padding(
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
    subjectBloc.dispose();
    super.dispose();
  }
}
