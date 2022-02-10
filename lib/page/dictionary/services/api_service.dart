import 'package:newdata/page/dictionary/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  //
  static const String baseURL =
      'https://api.dictionaryapi.dev/api/v2/entries/en_US/';
  static Future<DictModel> getWord(String text) async {
    // Lập trình bất đồng bộ (key word)
    final url = Uri.parse(baseURL + text);
    final respone = await http.get(url);
    var json = jsonDecode(
        respone.body); // Kiểu key and value, key là a thì value là 123
    // Search json to dart model để chuyển dạng code json về ngôn ngữ Dart
    var wordDictionary = DictModel.fromJson(json[0]);
    return wordDictionary;
  }
}
