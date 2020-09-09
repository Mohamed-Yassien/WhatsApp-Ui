import 'package:flutter/material.dart';

class UserCalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/salah.jpg'),
                radius: 27,
              ),
              title: Text('Mohamed Salah',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              subtitle: Text('September 5 , 10:20 Pm'),
              trailing: IconButton(
                icon: Icon(Icons.call,color: Colors.teal,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
          ],
        );
      },
      itemCount: 15,
    );
  }
}
