import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scrollbar(
      thumbVisibility: true,
      trackVisibility: true,
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D',
                ),
              ),
              title: Text('John Wick'),
              subtitle: Row(
                children: [
                  Icon(Icons.call_received, color: Colors.lightGreen),
                  Text('Today, 4:34AM'),
                ],
              ),
              trailing: Icon(
                index / 2 == 0 ? Icons.call : Icons.videocam_outlined,
              ),
            );
          },
      ),
    );
  }
}
