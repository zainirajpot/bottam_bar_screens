import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<Widget> tabItems = const [
      Icon(Icons.person_add_alt),
      Text(
        'Chats',
      ),
      Text(
        'Status',
      ),
      Text(
        'Calls',
      ),
    ];
    List<Widget> tabBarViewItem = [
      ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'images/flower.png',
                  height: 50,
                ),
              ),
            ),
            title: const Text('Sameena'),
            trailing: const Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Zainab'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Baba'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Moom'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Apa'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sadi'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Nika'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Jan'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Saba'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.person,
              ),
            ),
            title: Text('Maryam'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Amal'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Essa'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Musa'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.person,
            )),
            title: Text('Sameena'),
            trailing: Text(
              '2:17pm',
            ),
          ),
        ],
      ),
       Center(
        child: Container(
          
          height: height*0.3,
          width: width*0.3,
          color: Colors.amberAccent,
        ),
      ),
      const Center(
        child: Text(
          'third Tab',
        ),
      ),
      const Center(
        child: Text(
          'fourth Tab',
        ),
      ),
    ];

    return DefaultTabController(
      length: tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('WahtsApp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_sharp),
            ),
          ],
          bottom: TabBar(
            tabs: tabItems,
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(children: tabBarViewItem),
      ),
    );
  }
}
