import 'package:flutter/material.dart';
import 'package:learnrx/extensions/commen_ext.dart';
import 'package:learnrx/extensions/extension_on_rxdart.dart';

import 'demo_bloc.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  DemoBloc bloc = DemoBloc();

  @override
  Widget build(BuildContext context) {
    bloc.setListner();
    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
            stream: bloc.behaviorSubject.stream,
            builder: (context, snap) {
              return Text("Count ${snap.data}");
            },
          ),

          ///its extension function created by me on subject behaviour
          bloc.behaviorSubject.observe((snap){
            return Text("Count ${snap.data}");
          }),


          ElevatedButton(
            onPressed: () {
              bloc.subjectBehaviour();
            },
            child: const Text("behaviour subject").padding(
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
    bloc.dispose();
    super.dispose();
  }
}
