class Message {
  final String sender;
  final String imageUrl;
  final String lastMessage;
  final String createdAt;
  final int numberNewMessages;
  Message(
      {required this.sender,
      required this.imageUrl,
      required this.lastMessage,
      required this.createdAt,
      this.numberNewMessages = 0});

  static List<Message> get getDummyMessages => [
        Message(
            sender: "Ali Meo",
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbnA_tAxtKLBmhuWlLODRt0LsvgINB9ea7Bw&usqp=CAU',
            lastMessage: 'Sounds good to me!',
            createdAt: '11:33PM'),
        Message(
            sender: "Ada Reyes",
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/c/c7/Tabby_cat_with_blue_eyes-3336579.jpg',
            lastMessage: 'Sounds good to me!',
            createdAt: '11:33PM'),
        Message(
            sender: "Herman Pope",
            imageUrl:
                'https://media.npr.org/assets/img/2021/08/17/gettyimages-135773550-bb02ff79dd836d6e4170d4bc555423f24fa29d5e.jpg',
            lastMessage: 'Hey! How\'s it going?',
            createdAt: '11:33PM'),
        Message(
            sender: "Hallie Sandoval",
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6p8rTQwgx_BW8sngQ-0-A0tsU9hFcd4y-YA&usqp=CAU',
            lastMessage: 'Hi Tina. How\'s your night going?',
            createdAt: '06:33PM'),
        Message(
            sender: "Dean Warren",
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK3uu45UWvHLN6-4kjP9lfUIv0MzXiEEgNeQ&usqp=CAU',
            lastMessage: 'What did you do over the weekend?',
            createdAt: '09:43PM'),
        Message(
            sender: "Hallie Sandoval",
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGkyFe-NxOPivjos1iu-Xtso5c8CclTXKwTA&usqp=CAU',
            lastMessage: 'Heyyyyyy',
            createdAt: '11:33PM'),
      ];
}
