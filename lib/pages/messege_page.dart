import 'package:fiverr_app/components/chat.dart';
import 'package:fiverr_app/components/filter_chat_sheet.dart';
import 'package:flutter/material.dart';

class MessegePage extends StatefulWidget {
  const MessegePage({super.key});

  @override
  State<MessegePage> createState() => _MessegePageState();
}

class _MessegePageState extends State<MessegePage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "Ammi Jan",
        secondaryText: "Missed voice call",
        image: "assets/UserImage1.jpg",
        time: "Now"),
    ChatUsers(
        text: "Bilal",
        secondaryText: "Hi! How are you?",
        image: "assets/UserImage2.jpg",
        time: "1 min ago"),
    ChatUsers(
        text: "Usman",
        secondaryText: "Ghar a Ammi bola rahe hai",
        image: "assets/UserImage3.jpg",
        time: "04:58 PM"),
    ChatUsers(
        text: "+92 370******19",
        secondaryText: "kiya hal hai bro",
        image: "assets/UserImage9.jpg",
        time: "23/9/24"),
    ChatUsers(
        text: "Saad",
        secondaryText:
            "Abbu ko bol me deer se ao ga clg se dosto ke sat ho b.....",
        image: "assets/UserImage4.jpg",
        time: "01:30 PM"),
    ChatUsers(
        text: "Talha Friend",
        secondaryText: "kab ae ga uni se???",
        image: "assets/UserImage5.jpg",
        time: "01:28 PM"),
    ChatUsers(
        text: "Abdul Rehman Rafique",
        secondaryText: "ate ke mill ja raha ho ja raha hai to aja",
        image: "assets/UserImage6.jpg",
        time: "12:20 PM"),
    ChatUsers(
        text: "Nisar Ahmed",
        secondaryText: "..",
        image: "assets/UserImage7.jpg",
        time: "12:01 PM"),
    ChatUsers(
        text: "Anas Nadeem",
        secondaryText: "kidr hai bahir aa",
        image: "assets/UserImage8.jpg",
        time: "yesterday"),
    ChatUsers(
        text: "+92 31******10",
        secondaryText: "jani class start howe??",
        image: "assets/UserImage9.jpg",
        time: "23/9/24"),
    ChatUsers(
        text: "Leaopard Courier Service",
        secondaryText: "Aap ka parcel aya hai a kar receive krlein..",
        image: "assets/UserImage12.png",
        time: "22/9/24"),
    ChatUsers(
        text: "+92 34******09",
        secondaryText: "kese ho???",
        image: "assets/UserImage11.jpg",
        time: "21/9/24"),
  ];

  void _OpenFilterChatSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => const FilterChatSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APPBAR START FROM HERE
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.white,
        title: const Text(
          'Inbox',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _OpenFilterChatSheet,
            icon: const Icon(Icons.filter_list)
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),

      backgroundColor: Colors.white,

      // BODY START FROM HERE
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SafeArea(
            //     child: Padding(
            //   padding: const EdgeInsets.only(left: 16, right: 10, top: 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.only(
            //             top: 2, bottom: 2, left: 8, right: 8),
            //         height: 30,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30),
            //           color: Colors.pink[50],
            //         ),
            //         child: const Row(
            //           children: [
            //             Icon(
            //               Icons.add,
            //               color: Colors.pink,
            //               size: 20,
            //             ),
            //             SizedBox(
            //               width: 2,
            //             ),
            //             Text(
            //               'New',
            //               style: TextStyle(
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // )),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessegeRead:
                      (index == 0 || index == 2 || index == 5) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChatUsers {
  String text;
  String secondaryText;
  String image;
  String time;
  ChatUsers({
    required this.text,
    required this.secondaryText,
    required this.image,
    required this.time,
  });
}
