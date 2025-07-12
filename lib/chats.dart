import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat_bubble_rounded),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      appBar: AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: Text("WhatsApp", style: TextStyle(color: Colors.green)),
      centerTitle: false,
      actions: [
        Icon(Icons.qr_code_scanner),
        SizedBox(width: 25),
        Icon(Icons.camera_alt),
        SizedBox(width: 25),
        Icon(Icons.more_vert),
      ],
    ),
      body: ListView(
          children: [
             TextField( decoration: InputDecoration(
               hintText: 'Search',
               prefixIcon: Icon(Icons.search),
               filled: true,
               fillColor: Colors.grey[200],
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30),
                 borderSide: BorderSide.none,
               ),
             ),
             ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/760/108/HD-wallpaper-new-whatsapp-dp-plant-whats-app-dp.jpg",
                ),
              ),
              title:Text("User") ,subtitle: Text("hloo"),trailing: Text("yesterday"),
            ),
          ],
        ),

    );
  }
}
