import 'package:flutter/material.dart';

class UserChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mohamed.png'),
                radius: 25,
              ),
              title: Text(
                'Mohamed Ali',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
              ),
              subtitle: Text(
                'Hello My Friend',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
                maxLines: 2,
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('10:20',style: TextStyle(fontSize: 12),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Divider(),
            ),
          ],
        );
      },
      itemCount: 15,
    );
  }
}
