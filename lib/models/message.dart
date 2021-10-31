class Message {
  final String sender;
  final String imageUrl;
  final String lastMessage;
  final String createdAt;
  final int numberNewMessages;
  final bool isOnline;

  Message({
    required this.sender,
    required this.imageUrl,
    required this.lastMessage,
    required this.createdAt,
    this.isOnline = false,
    this.numberNewMessages = 0,
  });

  static List<Message> get getDummyMessages => [
        Message(
          sender: "Ali Meo",
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK3uu45UWvHLN6-4kjP9lfUIv0MzXiEEgNeQ&usqp=CAU',
          lastMessage: 'Sounds good to me!',
          createdAt: '11:33PM',
          numberNewMessages: 3,
        ),
        Message(
          sender: "Ada Reyes",
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0pN7iLZs32Fpr_h4Fsifix4_lsJOh1GOkIQ&usqp=CAU',
          lastMessage: 'Sounds good to me!',
          createdAt: '11:33PM',
          numberNewMessages: 1,
        ),
        Message(
          sender: "Herman Pope",
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl2uI_VwivMTm2rMwyVknY_UmGhGRXxlJo8g&usqp=CAU',
          lastMessage: 'Hey! How\'s it going?',
          createdAt: '11:33PM',
          numberNewMessages: 2,
        ),
        Message(
          sender: "Hallie Sandoval",
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXIUEW0-mJjpRHFIp0CHmzNlkWQlFelvm2oA&usqp=CAU',
          lastMessage: 'Hi Tina. How\'s your night going?',
          createdAt: '06:33PM',
        ),
        Message(
          sender: "Dean Warren",
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaJI4CRLFmm4lyLDbjbeW_hzDKR2oId_i4mw&usqp=CAU',
          lastMessage: 'What did you do over the weekend?',
          createdAt: '09:43PM',
        ),
        Message(
          sender: "Hallie Sandoval",
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGkyFe-NxOPivjos1iu-Xtso5c8CclTXKwTA&usqp=CAU',
          lastMessage: 'Heyyyyyy',
          createdAt: '11:33PM',
        ),
      ];
}
