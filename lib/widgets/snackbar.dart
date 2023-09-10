import 'package:flutter/material.dart';

class SnackBarErrorWidget {
  static show(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 30,
        backgroundColor: Colors.red,
        content: Text("Ocorreu um problema, tente novamente!"),
        duration: Duration(seconds: 3),
      )
    );
  }
}
class SnackBarSuccessWidget {
  static show(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 30,
        backgroundColor: Colors.green,
        content: Text("Operação realizada com sucesso!"),
        duration: Duration(seconds: 3),
      )
    );
  }
}