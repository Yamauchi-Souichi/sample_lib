import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  //バナナの数　1,2,3,
  final int number;
  const BananaCounter({Key? key,required this.number,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    //バナナの画像
    final banana = Image.asset('images/banana.jpg');

    //数字の部分
    final text = Text(
        '$number',
        style: const TextStyle(
          color: Colors.amber, //文字の色
          fontSize : 50, //文字の大きさ
    );

    //横に並べる
    final  row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
      banana,
      text,
      ],
    );

    //色と大きさを決める
    final con = Container(
      width: 300,//横
      height: 100,//高さ
      padding: const EdgeInsets.all(20),
      child:row,
      decoration: BoxDecoration(
        color: Colors.black12, //背景の色
        borderRadius: BorderRadius.circular(12), //角を丸くする
      ),
    );


    //表示するwidgetを決定する
    return con;
  }
}
