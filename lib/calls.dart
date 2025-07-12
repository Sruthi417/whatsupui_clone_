import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call_made),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Calls", style: TextStyle(color: Colors.black)),
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
            Text("Favourites", style: TextStyle(fontWeight: FontWeight.bold),),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-vector/20190420/ourmid/pngtree-favorite-vector-icon-png-image_963581.jpg",
                ),
              ),
              title: Text("Add Favourites"),
            ),
            SizedBox(height: 10),

            Text("Recents"),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/8089/8089114.png",
                ),
              ),
              title: Text("User"),
              subtitle: Text("yesterday,9.15 pm"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/128/8089/8089114.png",
                ),
              ),
              title: Text("User2"),
              subtitle: Text("21-08-2025,7.15 pm"),
              trailing: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
