import 'package:flutter/material.dart';
import 'package:fs01_day02_01/models/message.dart';
import 'package:fs01_day02_01/themes/app_decoration.dart';
import 'widgets.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({
    Key? key,
    required this.message,
  }) : super(
          key: key,
        );
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      height: 76,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(
            imageUrl: message.imageUrl,
            size: 60.0,
            newMessageNumber: 4,
            // isOnline: true,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              decoration: AppDecoration.bottomDivider,
              padding: const EdgeInsets.only(
                top: 6,
                bottom: 6,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          message.sender,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        message.createdAt,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Color(0xff4E586E),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    message.lastMessage,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
