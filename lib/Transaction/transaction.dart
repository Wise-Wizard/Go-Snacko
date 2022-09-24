import 'dart:math';
import 'package:flutter/material.dart';
import 'transaction_api.dart';
import 'package:cashfree_pg/cashfree_pg.dart';

void doTransaction(var amountController, BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
  final amount = amountController;
  if (amount == '') {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Invalid Amount"),
      ),
    );
    return;
  }
  num ordID = Random().nextInt(1000);
  num ordAmount = num.parse(amount);
  callTransactionAPI(ordID, ordAmount).then(
    (token) {
      String stage = "TEST";
      String orderId = "$ordID";
      String orderAmount = "$ordAmount";
      String tokenData = token;
      String customerName = "Saransh Shankar";
      String orderNote = "Order Note";
      String orderCurrency = "INR";
      String appId = "2389568c3805543a9f8925f5ff659832";
      String customerPhone = "7406320038";
      String customerEmail = "sample@gmail.com";
      String notifyUrl = "https://test.gocashfree.com/notify";
      Map<String, dynamic> inputParams = {
        "orderId": orderId,
        "orderAmount": orderAmount,
        "customerName": customerName,
        "orderNote": orderNote,
        "orderCurrency": orderCurrency,
        "tokenData": tokenData,
        "appId": appId,
        "customerPhone": customerPhone,
        "customerEmail": customerEmail,
        "stage": stage,
        "notifyUrl": notifyUrl
      };
      CashfreePGSDK.doPayment(inputParams).then((value) {
        if (value != null) {
          if (value['txStatus'] == 'SUCCESS') {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Payment Succesful'),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Payment Failure'),
              ),
            );
          }
        }
      });
    },
  );
}
