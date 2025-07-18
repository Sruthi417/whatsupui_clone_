import 'package:flutter/material.dart';
import 'package:whatsupui_clone/calls.dart';
import 'package:whatsupui_clone/chats.dart';
import 'package:whatsupui_clone/community.dart';
import 'package:whatsupui_clone/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Chats(), updates(), Community(), Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
         index=value;
          });
        },
        selectedItemColor: Colors.green,unselectedItemColor: Colors.black,showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chats",),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
      body: pages[index],
    );
  }
}
