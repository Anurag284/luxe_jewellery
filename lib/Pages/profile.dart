import 'package:flutter/material.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      // appBar: AppBar(title: Text('Profile'), backgroundColor: Colors.blue[600]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/profile1.png'),
                ),
                SizedBox(height: 20),

                SizedBox(height: 20),
                DetailsCard(icon: Icons.person, text: 'Anurag Jain P'),
                DetailsCard(icon: Icons.email, text: 'admin@gmail.com'),
                DetailsCard(icon: Icons.phone, text: '1234567890'),
                DetailsCard(icon: Icons.outbox_rounded, text: 'Your Orders'),

                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed:
                          () => Navigator.pushNamed(context, '/editprofile'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit, color: Colors.lightGreen[900]),
                          SizedBox(width: 10),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Colors.green[900],
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
                          SizedBox(width: 20),
                          Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.green[900],
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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 2),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.green[400]),
        title: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.green[700]),
        ),
      ),
    );
  }
}
