import 'package:flutter/material.dart';
import 'package:lottery/lottery_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '九宫格抽奖',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<LotteryEntity> list;

  @override
  void initState() {
    super.initState();
    list = [
      LotteryEntity('Airpods'),
      LotteryEntity('AirpodsPro'),
      LotteryEntity('机械键盘'),
      LotteryEntity('小爱同学'),
      LotteryEntity('iPad'),
      LotteryEntity('Mac'),
      LotteryEntity('天猫精灵'),
      LotteryEntity('iPhone 14'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('九宫格抽奖'),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: LotteryWidget(list: list),
        ),
      ),
    );
  }
}
