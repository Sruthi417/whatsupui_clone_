import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Communities", style: TextStyle(color: Colors.black)),
        centerTitle: false,
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 25),

          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
