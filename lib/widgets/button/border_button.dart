import 'package:epaper_ui/widgets/button/styled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BorderButton extends StyledButton {
  BorderButton(
      {Key? key,
      required String label,
      required VoidCallback onPressed,
      ButtonStyles? style})
      : super(key: key, label: label, onPressed: onPressed, style: style);

  BorderButton.rounded(
      {Key? key,
      required String label,
      required VoidCallback onPressed,
      ButtonStyles? style})
      : super(
            key: key,
            label: label,
            onPressed: onPressed,
            style: roundedButtonStyle(style));

  static ButtonStyles roundedButtonStyle(ButtonStyles? style) {
    ButtonStyles _style = ButtonStyles(
      radius: BorderRadius.circular(100),
    );
    return ButtonStyles.defaultStyles().assign(_style);
  }
}
