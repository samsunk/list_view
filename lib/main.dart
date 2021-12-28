import 'package:flutter/material.dart';
import 'package:list_view/long_list.dart';

void main() {
  runApp(
    MaterialApp(
      home: LongList(
        products:
            List<String>.generate(100, (index) => 'myproducts list:  $index'),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> country = <String>[
      'Nepal',
      'india',
      'Maldives',
      'Bhutan',
      'Srilanka',
      'Pakistan',
      'Afghanistan',
      'Bangladesh'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const Divider(
              color: Colors.teal,
            ),
           const ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Alarm'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
            ),
           const  Divider(),
            const ListTile(
              title: Text(''),
            ),
            const Divider(),
            ListTile(
              title: Text('$country[4]'),
            ),
            const Divider(),
            ListTile(
              title: Text('$country[5]'),
            )
          ],
        ),
      ),
    );
  }
}
