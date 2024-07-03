import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  try {
    final res = await http.get(url);
    print(res.body);
    print(jsonDecode(res.body)['name']);
  } catch (e) {
    print("unexpected error");
  }

  http.get(url).then((val) => print(jsonDecode(val.body)['username']));
}
