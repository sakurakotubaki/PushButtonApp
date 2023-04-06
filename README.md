# 画面遷移のボタンをコンポーネント化する
画面遷移に使うボタンのWidgetを切り分けてコンポーネント化してみた。やることは、
ボタンの名前と画面遷移するWidgetクラスを引数として渡すだけ。

# 何故コンポーネントするのか？
- 長いコードを書かずにすむ.
- 画面遷移するだけなら使いませる

## このようなコンポーネントを作る
```dart
class _PushButton extends StatelessWidget {
  const _PushButton({
    super.key,
    required this.buttonTitle,
    required this.pageName,
  });

  final String buttonTitle; // ボタンのタイトルを引数として渡す
  final Widget pageName; // 画面遷移先のWidgetクラスを引数として渡す

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pageName));
        },
        child: Text(buttonTitle));
  }
}
```

## 使用例
```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            PushButton(buttonTitle: 'Next Page', pageName: NextPage()),
            SizedBox(height: 20),
            PushButton(buttonTitle: 'MyPage', pageName: MyPage()),
          ],
        ),
      ),
    );
  }
}
```


