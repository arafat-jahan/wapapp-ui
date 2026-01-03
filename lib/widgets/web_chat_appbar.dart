import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';
import 'package:whatsapp_ui_clone/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // left + right spread
        children: [
          // Left Side: Profile + Name
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg',
                ),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          // Right Side: Icons
          Row(
            children:  [
              IconButton(onPressed:(){}, icon: Icon(Icons.search,color: Colors.grey,)),
              IconButton(onPressed:(){}, icon: Icon(Icons.more_vert,color: Colors.grey,)),
            ],
          ),
        ],
      ),
    );
  }
}
