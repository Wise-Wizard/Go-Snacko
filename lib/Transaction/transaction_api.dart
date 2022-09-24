// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> callTransactionAPI(orderID, orderAmount) async {
  var request = await http.post(
    Uri.https("test.cashfree.com", "api/v2/cftoken/order"),
    headers: <String, String>{
      'x-client-id': '2389568c3805543a9f8925f5ff659832',
      'x-client-secret': '9cb0079daa909113dc41d1481a1230cb102d7112',
      'Content-Type': 'application/json'
    },
    body: jsonEncode({
      "orderId": '$orderID',
      "orderAmount": "$orderAmount",
      "orderCurrency": "INR"
    }),
  );
  if (request.statusCode == 200) {
    var jsonResponse = jsonDecode(request.body);
    if (jsonResponse['status'] == 'OK') {
      print(jsonResponse['cftoken']);
      return jsonResponse['cftoken'];
    }
  }
  return 'Invalid cfToken';
}
