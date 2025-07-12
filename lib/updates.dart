import 'package:flutter/material.dart';

class updates extends StatelessWidget {
  const updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Updates", style: TextStyle(color: Colors.black)),
        centerTitle: false,
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 25),
          Icon(Icons.search),
          SizedBox(width: 25),
          Icon(Icons.more_vert),
        ],
      ),
      body: Expanded(
        child: ListView(
          children: [
            SizedBox(height: 10),
            Text("Status", style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/8089/8089114.png",
                ),
              ),title: Text("Add status"),subtitle: Text("Disappears after 24 hours"),
            ),
            SizedBox(height: 10,),
            Text("Recent Updates"),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://picparcel.com/wp-content/uploads/2023/06/45-3-1024x1024.jpg",
                ),
              ),
              title: Text("Friend"),
              subtitle: Text("yesterday,9.15 pm"),

            ),
          ],
        ),
      ),
    );
  }
}
