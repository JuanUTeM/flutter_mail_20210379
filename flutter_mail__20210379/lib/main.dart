import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mailboxes'),
      ),
      backgroundColor: Colors.blueGrey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CORREOS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  MailboxListItem(title: 'Today', icon: Icons.today),
                  MailboxListItem(title: 'Unread', icon: Icons.markunread),
                  MailboxListItem(title: 'Unbox', icon: Icons.inbox),
                  MailboxListItem(title: 'Archive', icon: Icons.archive),
                  MailboxListItem(title: 'Junk', icon: Icons.report),
                  MailboxListItem(title: 'Trash', icon: Icons.delete),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'iCloud',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MailboxListItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const MailboxListItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () {
          print('Tapped on $title');
        },
      ),
    );
  }
}
