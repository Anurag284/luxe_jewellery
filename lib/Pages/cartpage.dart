import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart'), backgroundColor: Colors.green[600]),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text(
          'Cart is empty !',
          style: TextStyle(fontSize: 18, color: Colors.grey[600]),
        ),
      ),
    );
  }
}
