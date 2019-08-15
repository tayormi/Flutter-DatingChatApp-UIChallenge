import 'package:chat_datingapp/src/models/card_model.dart';
import 'package:chat_datingapp/src/models/user_model.dart';

List<UserModel> getUsersCard() {
  List<UserModel> userCards = [
    UserModel("Harry", "assets/images/users/anna.jpeg"),
    UserModel("Timothy", "assets/images/users/gillian.jpeg"),
    UserModel("Francina", "assets/images/users/judith.jpeg"),
    UserModel("Ronald", "assets/images/users/anna.jpeg"),
    UserModel("Sara", "assets/images/users/gillian.jpeg"),
    UserModel("Francina", "assets/images/users/judith.jpeg"),
  ];

  return userCards;
}
List<CardModel> getCardList() {
  List<CardModel> cardList = [
    CardModel("Harry Hawkins", "assets/images/users/gillian.jpeg", "Hey!", 3, "11:13 AM", true),
    CardModel("Timothy Woodkin", "assets/images/users/anna.jpeg", "You: Hi there. Can you help me?", 3, "9:01 AM", false),
    CardModel("Francine Riley", "assets/images/users/anna.jpeg", "Hi, I wanna see you!", 1, "8:24 PM", true),
    CardModel("Ronald Weber", "assets/images/users/anna.jpeg", "Hey, What's up?", 4, "7:50 PM", true),
  ];
  return cardList;
}