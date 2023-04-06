import 'package:flutter/material.dart';
import 'package:navigator_widget/components/push_button.dart';
import 'package:navigator_widget/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHome Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // PushButton(buttonTitle: 'Next Page', pageName: NextPage()),
            // SizedBox(height: 20),
            // PushButton(buttonTitle: 'MyPage', pageName: MyPage()),
            PushButton(buttonTitle: 'Go Next', rootPath: '/next'),
            SizedBox(height: 20),
            PushButton(buttonTitle: 'Go MyPage', rootPath: '/my_page'),
          ],
        ),
      ),
    );
  }
}
