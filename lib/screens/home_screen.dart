import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/user_calls.dart';
import 'package:whatsapp_ui/widgets/user_chat.dart';
import 'package:whatsapp_ui/widgets/user_status.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController controller =
        TabController(length: 4, vsync: this, initialIndex: 0);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF00796A),
        title: Text(
          'WhatsApp',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.1),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search,),
            onPressed: () {},
            iconSize: 27,
          ),
          // DropdownButton(
          //   isExpanded: false,
          //   icon: Icon( Icons.more_vert,color: Colors.white,),
          //   items: [
          //     DropdownMenuItem(
          //       child: Text('New group'),
          //       value: Text('group'),
          //     ),
          //     DropdownMenuItem(
          //       child: Text('New broadcast'),
          //       value: Text('cast'),
          //     ),
          //     DropdownMenuItem(
          //       child: Text('WhatsApp Web'),
          //       value: Text('web'),
          //     ),
          //     DropdownMenuItem(
          //       child: Text('Starred Messages'),
          //       value: Text('star'),
          //     ),
          //     DropdownMenuItem(
          //       child: Text('Settings'),
          //       value: Text('set'),
          //     ),
          //   ],
          //   onChanged: (item){},
          // ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            iconSize: 27,
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: controller,
          tabs: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Chats',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Text(
              'Status',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Calls',
              style: TextStyle(fontSize: 16),
            ),
            Icon(Icons.camera_alt),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          UserChat(),
          UserStatus(),
          UserCalls(),
          Center(
            child: Text(
              'Take Photo...',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
        },
        child: Icon( Icons.speaker_notes , size: 30,color: Colors.white  ),
      ),
    );
  }
}
