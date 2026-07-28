import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Messages", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xFF101526),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.add, size: 18),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAlignment.start,
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF101526),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Color(0xFF6C7693)),
                  hintText: "Search messages...",
                  hintStyle: TextStyle(color: Color(0xFF6C7693)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text("ONLINE NOW", style: TextStyle(color: Color(0xFF6C7693), fontSize: 12, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            // Online Users
            Row(
              children: [
                _buildOnlineAvatar("AV", "Dr."),
                _buildOnlineAvatar("NS", "Neha"),
                _buildOnlineAvatar("DP", "Dev"),
              ],
            ),
            const SizedBox(height: 20),

            const Text("ALL MESSAGES", style: TextStyle(color: Color(0xFF6C7693), fontSize: 12, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            // Chat Items
            Expanded(
              child: ListView(
                children: [
                  _buildChatItem("AV", "Dr. Aryan Verma", "Great insight on the Europa problem!", "2m", unreadCount: 3),
                  _buildChatItem("NS", "Neha Sharma", "Did you see the new dark matter post?", "15m", unreadCount: 1),
                  _buildChatItem("AS", "Astrostef", "I think geothermal energy could work!", "1h"),
                  _buildChatItem("DP", "Dev Patel", "Check my new satellite proposal 🚀", "3h"),
                  _buildChatItem("AM", "Akshay Mishra", "Loved your comment on propulsion!", "1d"),
                  _buildChatItem("SR", "Spacerunner", "Following your work closely 🚀", "2d"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOnlineAvatar(String initials, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xFF161C30),
                child: Text(initials, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle),
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          Text(name, style: const TextStyle(color: Color(0xFF6C7693), fontSize: 11)),
        ],
      ),
    );
  }

  Widget _buildChatItem(String initials, String name, String message, String time, {int unreadCount = 0}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: const Color(0xFF161C30),
            child: Text(initials, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAlignment.start,
              children: [
                Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                const SizedBox(height: 2),
                Text(message, style: const TextStyle(color: Color(0xFF6C7693), fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAlignment.end,
            children: [
              Text(time, style: const TextStyle(color: Color(0xFF6C7693), fontSize: 11)),
              if (unreadCount > 0) ...[
                const SizedBox(height: 4),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: const Color(0xFF5374F9),
                  child: Text("$unreadCount", style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                )
              ]
            ],
          )
        ],
      ),
    );
  }
}
