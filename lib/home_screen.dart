import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Chat')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 10),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
                itemBuilder: (context,) => [
                  PopupMenuItem(
                    value: 1,
                      child: Text('New Group')

                  ),
                  PopupMenuItem(
                      value: 2,
                      child: Text('New Community')

                  ),
                  PopupMenuItem(
                      value: 3,
                      child: Text('Broadcast lists')

                  ),
                  PopupMenuItem(
                      value: 4,
                      child: Text('Linked devices')

                  ),
                  PopupMenuItem(
                      value: 5,
                      child: Text('Starred')

                  ),
                  PopupMenuItem(
                      value: 6,
                      child: Text('Read all')

                  ),
                  PopupMenuItem(
                      value: 7,
                      child: Text('settings')

                  ),
                ],

            ),
            SizedBox(width: 10),
          ],
        ),

        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 210,
                itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D'),
                ),
                title: Text('John Wick'),
                subtitle: Text('Where I am going? '),
                trailing: Text('8:45PM'),
              );
            }),
            ListView.builder(

              itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D'),
                          radius: 30,

                        ),

                      ],
                    ),
                  );

              }
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D'),
                ),
                title: Text('John Wick'),
                subtitle: Row(children: [ Icon(Icons.call_received, color: Colors.lightGreen,),Text('Today, 4:34AM')]),
                trailing: Icon(index / 2 == 0? Icons.call : Icons.videocam_outlined),
                
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
