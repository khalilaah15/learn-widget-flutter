import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String name;
  final String role;
  final String photoURL;

  UserProfile({this.name = "No Name", this.role = "No Role", this.photoURL = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(image: NetworkImage((photoURL != null)
        ? photoURL
        : "https://asset-a.grid.id/crop/0x0:0x0/945x630/photo/2021/12/22/foto-cover-beginilah-pesan-meny-20211222010910.jpg"),
        fit: BoxFit.cover,
        width: 200,
        height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "[" + role + "]",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "[" + name + "]",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}