import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestDB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

// config DB  
// TODO read
 Future<void> fetchUsers() async {
    final response = await http.get(Uri.parse('http://192.168.1.106/app/read.php')); // เปลี่ยน URL ให้ถูกต้อง
    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load users');
    }
  }


// TODO create
  Future<void> createUser(String name, String email) async {
    final response = await http.post(
      Uri.parse('http://192.168.1.106/app/create.php'), // เปลี่ยน URL ให้ถูกต้อง
      body: {'name': name, 'email': email},
    );

    if (response.statusCode == 200) {
      fetchUsers(); // เรียกใช้ฟังก์ชันเพื่อโหลดข้อมูลใหม่
    } else {
      throw Exception('Failed to create user');
    }
  }


// TODO update
  Future<void> updateUser(int id, String name, String email) async {
    final response = await http.post(
      Uri.parse('http://192.168.1.106/app/update.php'), // เปลี่ยน URL ให้ถูกต้อง
      body: {'id': id.toString(), 'name': name, 'email': email},
    );

    if (response.statusCode == 200) {
      fetchUsers(); // เรียกใช้ฟังก์ชันเพื่อโหลดข้อมูลใหม่
    } else {
      throw Exception('Failed to update user');
    }
  }


// TODO delete
  Future<void> deleteUser(int id) async {
    final response = await http.post(
      Uri.parse('http://192.168.1.106/app/delete.php'), // เปลี่ยน URL ให้ถูกต้อง
      body: {'id': id.toString()},
    );

    if (response.statusCode == 200) {
      fetchUsers(); // เรียกใช้ฟังก์ชันเพื่อโหลดข้อมูลใหม่
    } else {
      throw Exception('Failed to delete user');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]['name']),
            subtitle: Text(users[index]['email']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Implement update functionality
                    updateUser(users[index]['id'], 'New Name', 'newemail@example.com');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    deleteUser(users[index]['id']); // ลบผู้ใช้
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createUser('New User', 'newuser@example.com'); // เพิ่มผู้ใช้ใหม่
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
