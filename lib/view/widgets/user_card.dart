import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String des;
  final IconData icon;
  const UserCard(
      {Key? key, required this.name, required this.des, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(des),
        trailing: Icon(icon),
      ),
    );
  }
}
