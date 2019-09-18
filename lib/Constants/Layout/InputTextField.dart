import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {

  TextEditingController _controller;
  bool _obscure;
  String _labelText;

  InputTextField({TextEditingController controller, bool obscure, String labelText}){
    this._controller = controller;
    this._obscure = obscure;
    this._labelText = labelText;
  }

  @override
  Widget build(BuildContext context) {
    return new TextField(
      controller: this._controller,
      decoration: new InputDecoration(
          //hintText: "Enter the password",
          labelText: this._labelText,
          //alignLabelWithHint: true,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25),
            gapPadding: 5,
          )),
      textAlign: TextAlign.right,
      obscureText: this._obscure,
    );
  }
}
