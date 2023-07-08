import 'package:flutter_ui_app_design/utils/constaints.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage {
  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 2,
        backgroundColor: greenColor,
        textColor: textColor,
        fontSize: 16.0);
  }
}
