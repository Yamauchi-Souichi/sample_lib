//import 'package:flutter/cupertino.dart';

void main() {
  //int 整数値　1 2 3
  //ListViewなど
  //double 少数点を含む数値 1.2 3.4
  //Containerなど
  print(0.2 + 1.0);

  //string；文字列
  //''or""をつける
  // Text(''),
  print("0.2+1.0");
  print("0.2" + "1.0");
  print("奥野" + "良太");

  //bool(ブール)：真偽値
  //ture or false
  //MaterialAppのdebugShowCheckModeBanner false

  /*変数の定義
  データ型　変数名　＝　値；
  データ型と値のデータ型は同じでないといけない
  */
  String name = '奥野';
  int number = 1;

  /*リスト→複数の値を管理できる */
  List<String> nameList = ['大島', 'ヤマウチ', '田中'];
  List<int> numberLsit = [0, 1, 2, 3];
  print(numberLsit);

  //Listの値の取り出し方
  print(nameList[0]);
  print(numberLsit[1]);

  //Listに値を追加
  print(nameList);
  nameList.add('岡田');
  print(nameList);

  //マップ→複数の値を管理できる
  // keyとvalue
  /*Map<keyのデータ型,valueのデータ型>　変数名 = {
     1(keyのデータ型) :　(valueのデータ型のデータ),
     2 : (),
     3 : ()
  } */
  Map<int, String> nameMap = {
    1: '奥野',
    2: '田中'
  };
  print(nameMap);
  print(nameMap[1]);

  //Mapに値を追加
  nameMap[3] = '後藤';
  print(nameMap);

  //varバリアブル:型推理→初めに入れられた値から型を推論してくれる
  //データ型　変数名　＝　値；　変数の定義
  var number1 = 0;

  //Functionファンクション；メソッド、関数、処理をまとめたもの
  //void printNumber(){ ~  }
  //引数
  //メソッドの定義
  void printNumber(int x, int y) {
    int a = 1;
    int b = 2;
    a = 3 * b + a; //7
    print(a + x + y); // 7+x+y
  }
  //メソッドの実行
  printNumber(1, 10);

  //returnリターンがある場合
  // returnされるデータ型　メソッド名(){ 処理　}
  String getName() {
    String name = 'ヤマウチ';
    return name;
  }
  //returnされるメソッドは変数になる
  String name2 = getName();
  print(name2);

  /*
  //名前付き引数←値を引数に送る必要がない
  void printNumber2({int z,int k}){
    int c = 1;
    int d = 2;
    c = 3 * d + c; //7
    print(c+z+k); // 7+x+y
  }
  printNumber2(z:1,k:10);
  */

  /*
  //オプション引数　すべての引数に値を入れなくてよい
  void printNumber2([int z,int k]){
    int c = 1;
    int d = 2;
    c = 3 * d + c; //7
    print(c+z+k); // 7+x+y
  }
  printNumber2(10);
  */

  //アロー関数:１行で終わる内容
  void printNum2() => print(10);

  //Futureフューチャー:時間がかかる処理
  Future<void> test() async {
    print('スタート');
    //３秒後にフィッシュ
    await Future.delayed(Duration(seconds: 3));
    print('フィッシュ');
  }
  test();

  //クラス
  //インスタントの作り方：クラス名()
  List<Person> personList = [
  Person("ヤ",24),
  Person('ヤマ',25),
  Person('ヤマウ',26),
  ];

  String name11 = '奥野';
  final String name1 = name11;     //変数を入れれる
  //const String name3 = name11;//コンパイル時定数
  //print(name3 + name1);

  print('gitなぞ');
}

  class Person{
    String name;
    int age;
    //コンストラクター：クラスのインスタントを生成する際に呼び出すメソッド
    Person(this.name,this.age);
  }

