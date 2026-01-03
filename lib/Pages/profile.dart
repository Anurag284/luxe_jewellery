import 'package:flutter/material.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      // appBar: AppBar(title: Text('Profile'), backgroundColor: Colors.blue[600]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/profile1.png'),
                ),
                SizedBox(height: 20),

                SizedBox(height: 20),
                DetailsCard(icon: Icons.person, text: 'Anurag Jain P'),
                DetailsCard(icon: Icons.email, text: 'admin@gmial.com'),
                DetailsCard(icon: Icons.phone, text: '1234567890'),

                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed:
                          () => Navigator.pushNamed(context, '/editprofile'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit, color: Colors.blue[800]),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed:
                          () => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                            (route) => false,
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout, color: Colors.red),
                          Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const DetailsCard({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue[800]),
        title: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.blue[800]),
        ),
      ),
    );
  }
}
