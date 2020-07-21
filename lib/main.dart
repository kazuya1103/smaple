import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smaple/mainL_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HELLO WORLD',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
                appBar: AppBar(
                  title: Text('サンプル'),
                ),
                body: Consumer<MainModel>(
                  builder: (context, model,child) {
                    return Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            model.kazuyaText,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          RaisedButton(
                            child: Text('ボタン'),
                            onPressed: (){
                              model.changeKazuyaText();
                            },
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
      ),
      );
  }
}