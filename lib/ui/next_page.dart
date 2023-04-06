import 'package:flutter/material.dart';
import 'package:navigator_widget/components/push_button.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          PushButton(buttonTitle: 'Back', rootPath: '/'),
        ],
      )),
    );
  }
}
