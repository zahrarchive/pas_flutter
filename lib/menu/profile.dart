import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fathimah Az Zahra",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text(
                            "11 PPLG 2",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 53, 18, 18),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Absen 12",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Saya sedang mengerjakan pas mobile development. Sangat menyenangkan!",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[800],
                  backgroundImage: const NetworkImage(
                    'https://i.pinimg.com/736x/e4/39/19/e43919b5a18184d10736e9bc9429e502.jpg',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
              ],
            ),
          
        ),
      
    );
  }
}