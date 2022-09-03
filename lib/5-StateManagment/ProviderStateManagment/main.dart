import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './UI/UserListScreen.dart';
import './provider/UserProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (BuildContext context) => UserProvider(),
          child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        leading: Consumer<UserProvider>(builder: (context, provider, child) {
          return Center(
              child: Text(
            "Users: ${provider.userList.length}",
          ));
        }),
      ),
      body: MyProviderPage(),
    );
  }
}