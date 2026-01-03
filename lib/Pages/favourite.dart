import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
        backgroundColor: Colors.green[600],
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text(
          'No Favourites!',
          style: TextStyle(fontSize: 18, color: Colors.grey[600]),
        ),
      ),
    );
  }
}
