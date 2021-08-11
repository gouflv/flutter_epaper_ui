import 'package:epaper_ui/epaper_ui.dart';
import 'package:flutter/widgets.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.s, 20.s, 30.s, 20.s),
      child: child,
    );
  }

  final Widget child;
}
