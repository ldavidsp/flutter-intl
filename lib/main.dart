import 'package:flutter/material.dart';
import 'generated/l10n.dart';

void main() => runApp(Homeflow());

class Homeflow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: S.of(context).appName,
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      home: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).appName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(S.of(context).welcome),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
