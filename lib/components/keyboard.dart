import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard({required this.cb});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow(buttons: [
            Button.big(text: 'AC', color: Button.DARK, cb: this.cb),
            Button.operation(text: '%', color: Button.DARK, cb: this.cb),
            Button.operation(text: '/', cb: this.cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '1', cb: this.cb),
            Button(text: '2', cb: this.cb),
            Button(text: '3', cb: this.cb),
            Button.operation(text: 'x', cb: this.cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '4', cb: this.cb),
            Button(text: '5', cb: this.cb),
            Button(text: '6', cb: this.cb),
            Button.operation(text: '-', cb: this.cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '7', cb: this.cb),
            Button(text: '8', cb: this.cb),
            Button(text: '9', cb: this.cb),
            Button.operation(text: '+', cb: this.cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button.big(text: '0', cb: this.cb),
            Button(text: '.', cb: this.cb),
            Button.operation(text: '=', cb: this.cb),
          ])
        ],
      ),
    );
  }
}
