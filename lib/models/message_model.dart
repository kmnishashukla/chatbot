import 'package:chatpot/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; //would usually be type datetime or firebase timestap in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

//you -curent user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/sarthak.png',
);

//USERS
final User greg = User(
  id: 1,
  name: 'Sarthak',
  imageUrl: 'assets/images/sarthak.png',
);

final User james = User(
  id: 2,
  name: 'Kanchan',
  imageUrl: 'assets/images/kanchan.png',
);

final User john = User(
  id: 3,
  name: 'Megha',
  imageUrl: 'assets/images/megha.png',
);

final User sarthak = User(
  id: 4,
  name: 'Navneet',
  imageUrl: 'assets/images/navneet.png',
);

final User devesh = User(
  id: 5,
  name: 'Devesh',
  imageUrl: 'assets/images/devesh.png',
);

final User sophia = User(
  id: 6,
  name: 'Aliza',
  imageUrl: 'assets/images/aliza.png',
);

final User nisha = User(
  id: 7,
  name: 'Nisha',
  imageUrl: 'assets/images/nisha.png',
);

//favorite contacts
List<User> favorites = [devesh, nisha, sarthak, john, greg];

//example chats on home screen
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'hey,what are  doing?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sarthak,
    time: '4:30',
    text: 'hey,how\'s it going ?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30',
    text: 'hey,where are you ? ',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'hey,how\'s it going ?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nisha,
    time: '1:30 PM',
    text: 'hey,what did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: devesh,
    time: '12:30 PM',
    text: 'hey, how  are you?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'hey, what did you do today?',
    isLiked: false,
    unread: false,
  ),
];
//example message in chat screen
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'hey,how\'s it going ?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'just walked my doge',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'how\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'what kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:30',
    text: 'i ate so much food today,',
    isLiked: false,
    unread: true,
  ),
];
