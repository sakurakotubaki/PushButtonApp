import 'package:flutter/material.dart';
import 'package:navigator_widget/components/push_button.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPage'),
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
