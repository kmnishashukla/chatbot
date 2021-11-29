import 'dart:convert';
import 'package:chatpot/models/Message.dart';
import 'package:chatpot/models/product.dart';
import 'package:chatpot/service/constant.dart';
import 'package:http/http.dart' as http;


Future<List<Product>> getProductList() async {
  var res = await http.get('$BASE_URL/testlocal/api.php');
  List responseJson = json.decode(res.body);
  return responseJson.map((m) => new Product.fromJson(m)).toList();
}



Future<List<UserMessage>> getMsgList() async {
  var res = await http.get('http://192.168.0.109/testlocal/get.php');
  List responseJson = json.decode(res.body);
  return responseJson.map((m) => new UserMessage.fromJson(m)).toList();
}

Future<dynamic> sendMessage(body) async {

  var res = await http.post('$BASE_URL/testlocal/api.php',body: body);
  var decodeRes =jsonDecode(res.body);
print(decodeRes.toString());
  return decodeRes;
}

