void main() async {
  //futures
  //used while connecting external apis

  final result = await giveAresultAfter2sec();

  print(result);
  print("first");
  print("second");
  print("third");

  final result2 = await giveAresultAfter6sec();
  print(result2);

  giveAresultAfter4sec().then((val) => print(val));
}

Future<String> giveAresultAfter2sec() {
  return Future(() {
    return "hi";
  });
}

Future<String> giveAresultAfter4sec() async {
  return "hello";
}

Future<String> giveAresultAfter6sec() {
  return Future.delayed(Duration(seconds: 6), () {
    return "after 6 second";
  });
}
