import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/ahly.jpg'),
            radius: 30,
          ),
          title: Text(
            'My Status',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            'Yesterday, 4:54 Pm',
            style: TextStyle(fontSize: 15),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.teal,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recent Updates',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/image.jpg'),
          ),
          title: Text(
            'Abo Treaka',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            '21 minutes ago',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Viewed Updates',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/image2.jpg'),
          ),
          title: Text(
            'El Negro',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            '21 minutes ago',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/salah.jpg'),
          ),
          title: Text(
            'Mohamed Salah',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            '21 minutes ago',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/mohamed.jpg'),
          ),
          title: Text(
            'Mohamed Emara',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            '21 minutes ago',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/salah.jpg'),
          ),
          title: Text(
            'Mohamed Ebrahim',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            '21 minutes ago',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
      ],
    );
  }
}
