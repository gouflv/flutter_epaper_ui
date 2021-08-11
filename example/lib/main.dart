import 'package:epaper_ui/epaper_ui.dart';
import 'package:example/widgets/panel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter EPaper UI Example',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter EPaper UI Example'),
          ),
          body: PageContainer(
            child: Column(children: [
              Panel(
                title: 'Button',
                child: Row(
                  children: [
                    BorderButton(
                      label: 'Default',
                      onPressed: () {
                        print(DateTime.now());
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    BorderButton(
                      label: '中文',
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    BorderButton.rounded(
                      label: 'Rounded',
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
