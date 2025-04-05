import 'package:flutter/material.dart';
import '../../data/models/user.dart';
import '../../data/services/api_service.dart';
import '../../data/services/storage_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> _users = [];
  User? _savedUser;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadUsers();
    _loadSavedUser();
  }

  Future<void> _loadUsers() async {
    try {
      List<User> users = await ApiService.fetchUsers();
      setState(() {
        _users = users;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _loadSavedUser() async {
    User? user = await StorageService.getSavedUser();
    setState(() {
      _savedUser = user;
    });
  }

  Future<void> _saveUser(User user) async {
    await StorageService.saveUser(user);
    _loadSavedUser();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Saved: ${user.name}")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User List")),
      body: Column(
        children: [
          if (_savedUser != null)
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Last Saved: ${_savedUser!.name} - ${_savedUser!.email}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          Expanded(
            child: _isLoading
                ? Center(child: CircularProgressIndicator())
                : _error != null
                    ? Center(child: Text(_error!))
                    : ListView.builder(
                        itemCount: _users.length,
                        itemBuilder: (context, index) {
                          User user = _users[index];
                          return ListTile(
                            title: Text(user.name),
                            subtitle: Text(user.email),
                            trailing: IconButton(
                              icon: Icon(Icons.save),
                              onPressed: () => _saveUser(user),
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}
