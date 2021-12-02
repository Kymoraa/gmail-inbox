import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Inbox',
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Adds dark mode
      ),
      home: const MyInbox(),
    );
  }
}

class MyInbox extends StatelessWidget {
  const MyInbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gmail Inbox"),
        leading: const Icon(Icons.menu),
      ),
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(padding: EdgeInsets.all(10.0)),
                NotificationText(),
                InboxSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationText extends StatelessWidget {
  const NotificationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      child: const Text(
        'Notificaciones',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}

class InboxSection extends StatelessWidget {
  const InboxSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/gavygdwhilk8d2cytkeq'),
                radius: 24.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    'Duolingo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  Text(
                    'Hi Nairobi, time for Spanish! Keep you...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  Text(
                    'Learning a language requires practice',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Padding(padding: EdgeInsets.all(8.0)),
                  SizedBox(
                    child: SizedBox(
                      child: Text('21:20'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  Icon(Icons.star_border),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
