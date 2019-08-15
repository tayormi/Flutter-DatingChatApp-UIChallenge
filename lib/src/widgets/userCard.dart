import 'package:chat_datingapp/src/models/user_model.dart';
import 'package:flutter/material.dart';

class UserCardWidget extends StatelessWidget {
  final UserModel user;
  const UserCardWidget({Key key, this.user})
      : assert(user != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(user.profilePic),
          radius: 32,
          backgroundColor: Color(0xfff1f3f5),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            user.name,
            style: TextStyle(
                inherit: true,
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Colors.white),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}