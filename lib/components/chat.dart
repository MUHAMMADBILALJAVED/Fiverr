import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatUsersList extends StatefulWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessegeRead;
  ChatUsersList(
      {super.key,
      required this.text,
      required this.secondaryText,
      required this.image,
      required this.time,
      required this.isMessegeRead,
    }
  );

  @override
  State<ChatUsersList> createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  maxRadius: 25,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.secondaryText,
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            widget.time,
            style: TextStyle(fontSize: 12, color: widget.isMessegeRead?Colors.blue : Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}
