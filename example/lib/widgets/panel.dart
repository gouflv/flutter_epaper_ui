import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(title),
            )),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
          child: child,
        )
      ],
    );
  }

  final Widget child;
  final String title;
}
