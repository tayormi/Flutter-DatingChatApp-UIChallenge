import 'package:chat_datingapp/src/models/card_model.dart';
import 'package:flutter/material.dart';

class ChatCardWidget extends StatelessWidget {
  final CardModel cardModel;
  const ChatCardWidget({Key key, this.cardModel})
      : assert(cardModel != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          cardModel.isNotification ? Expanded(
              flex: 1,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFFed7260), Color(0xFFec3f5a)]),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                    child: Text(
                  cardModel.notificationCount.toString(),
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
              )) : Container(),
          Expanded(
            flex: 19,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(cardModel.profilePic),
                radius: 28,
                backgroundColor: Color(0xfff1f3f5),
              ),
              title: Text(cardModel.name, style:TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
              subtitle: Text(cardModel.latestMessage),
              trailing: Text(cardModel.timeStamp, style:TextStyle(color: Colors.black87, fontSize: 10.0)),
            ),
          )
        ],
      ),
    );
  }
}
