import 'package:epaper_ui/epaper_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonStyles {
  ButtonStyles({this.height, this.padding, this.radius, this.fontSize});

  final double? height;

  final EdgeInsets? padding;

  final BorderRadius? radius;

  // final TextStyle? textStyle;

  final double? fontSize;

  ButtonStyles assign(ButtonStyles? source) {
    if (source == null) return this;

    return ButtonStyles(
        height: source.height ?? height,
        padding: source.padding ?? padding,
        radius: source.radius ?? radius,
        fontSize: source.fontSize ?? fontSize);
  }

  static ButtonStyles defaultStyles() {
    double height = 40.s;
    double fontSize = 20.s;

    return ButtonStyles(
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 12),
        radius: BorderRadius.circular(4),
        fontSize: fontSize);
  }
}

class StyledButton extends StatelessWidget {
  StyledButton(
      {Key? key, required this.label, required this.onPressed, this.style})
      : super(key: key);

  final String label;

  final VoidCallback onPressed;

  final ButtonStyles? style;

  @override
  Widget build(BuildContext context) {
    ButtonStyles _style = ButtonStyles.defaultStyles().assign(style);

    return GestureDetector(
        onTap: onPressed,
        child: Container(
          height: _style.height,
          padding: _style.padding,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: _style.radius,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: _style.fontSize),
            ),
          ),
        ));
  }
}
