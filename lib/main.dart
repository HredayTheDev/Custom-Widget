import 'package:flutter/material.dart';

import 'new_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Custom Widget'),
      ),
      body: Column(
        children: [
          Center(
            child: MyProfile('Hreday Sagar Chakraborty',
                'https://resize.indiatvnews.com/en/resize/newbucket/715_-/2021/06/shah-rukh-khan-1-1624602065.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          DifferentWidget(
              "Hello",
              "https://cdn.siasat.com/wp-content/uploads/2021/05/Shah-Rukh-Khan.jpg",
              "King Khan",
              "https://cdn.siasat.com/wp-content/uploads/2021/05/Shah-Rukh-Khan.jpg"),
        ],
      ),
    );
  }
}

Widget DifferentWidget(
    String title2, String image2, String title3, String image4) {
  return Expanded(
    child: ListView(
      children: [
        ListTile(
          title: Text(title2),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image2),
          ),
          subtitle: Text(title3),
          trailing: Image.network(image4),
        )
      ],
    ),
  );
}
