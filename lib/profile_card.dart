import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String bio;
  final String imageUrl;
  final String instagram; // เพิ่มตัวแปรเก็บชื่อ IG

  const ProfileCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.phone,
    required this.bio,
    required this.imageUrl,
    required this.instagram, // รับค่าชื่อ IG
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8,
      shadowColor: Colors.blue.shade200,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 4.0),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
            ),
            Text(position, style: TextStyle(fontSize: 16, color: Colors.blue.shade400)),
            const Divider(thickness: 1, color: Colors.blue, height: 20),
            contactInfo(Icons.email, email, Colors.blue.shade700),
            contactInfo(Icons.phone, phone, Colors.blue.shade900),
            const SizedBox(height: 10),
            Text(
              bio,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.black87),
            ),
            const SizedBox(height: 10),
            instagramInfo(), // แสดงไอคอน + ชื่อ IG
          ],
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }

  // แสดงไอคอน Instagram พร้อมชื่อ IG
  Widget instagramInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png",
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 8),
        Text(
          "@$instagram",
          style: const TextStyle(fontSize: 14, color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}