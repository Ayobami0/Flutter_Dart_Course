import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final VoidCallback selectHandler;
  
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        textColor: Colors.white,
        color: Colors.blue,
        child: Text('Answer 1'),
      ),
    );
  }
}
