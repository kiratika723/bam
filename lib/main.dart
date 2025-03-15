import 'package:flutter/material.dart';
import 'profile_card.dart'; // นำเข้าไฟล์โปรไฟล์การ์ด

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade50, // พื้นหลังสีฟ้าอ่อน
        appBar: AppBar(
          title: const Text(
            "My Profile",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade700, // สีฟ้าเข้ม
        ),
        body: const Center(
          child: ProfileCard(
            name: "Kiratika Siamaku",
            position: "Student",
            email: "kiratika110744@gmail.com",
            phone: "+66 120 6247",
            bio: "It's never too late to start again 🚀",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyNFQOW17X0kUoAzX7E5DhnusRvxFj5TKsJg&s",
            instagram: "babiesbananaaa", // ใส่ชื่อ IG ที่ต้องการ
          ),
        ),
      ),
    );
  }
}
