import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:sample/banana_counter.dart';

main(){

  //アプリ
  const app = MaterialApp(home:Sample());
  //アプリを動かす
  runApp(app);
}

// 画面
class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('aaaa'),
            ElevatedButton(onPressed: () => tapA(), child: const Text('A')),
            ElevatedButton(onPressed: () => tapB(), child: const Text('B')),
            ElevatedButton(onPressed: () => tapC(), child: const Text('C')),
          ],
        ),
      ),
    );
  }

  tapA(){}

  tapB(){}

  tapC(){}

}