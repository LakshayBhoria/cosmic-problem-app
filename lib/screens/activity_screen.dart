import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Notifications",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF101526),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white.withOpacity(0.05)),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.filter_list, size: 14, color: Color(0xFF6C7693)),
                    SizedBox(width: 6),
                    Text(
                      "Filter",
                      style: TextStyle(color: Color(0xFF8B95B3), fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAlignment.start,
          children: [
            const Text(
              "EARLIER",
              style: TextStyle(color: Color(0xFF6C7693), fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 0.5),
            ),
            const SizedBox(height: 12),

            Expanded(
              child: ListView(
                children: [
                  _buildNotificationCard(
                    initials: "AS",
                    titleRich: const TextSpan(
                      text: "Astrostef ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "commented on your problem\n\"How can humans survive on Europe?\"",
                          style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF8B95B3)),
                        )
                      ],
                    ),
                    time: "3m ago",
                    hasUnreadDot: true,
                    avatarBg: const Color(0xFF163C2E),
                    avatarTextColor: const Color(0xFF2ECC71),
                  ),
                  _buildNotificationCard(
                    initials: "NS",
                    titleRich: const TextSpan(
                      text: "Neha Sharma ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "updated your comment.",
                          style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF8B95B3)),
                        )
                      ],
                    ),
                    time: "10m ago",
                    hasUnreadDot: true,
                    avatarBg: const Color(0xFF2A1C3D),
                    avatarTextColor: const Color(0xFF9B51E0),
                  ),
                  _buildNotificationCard(
                    icon: Icons.star_rounded,
                    titleRich: const TextSpan(
                      text: "You earned the badge ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "\"Rising Star\"",
                          style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF8B95B3)),
                        )
                      ],
                    ),
                    time: "1h ago",
                    hasUnreadDot: true,
                    iconColor: const Color(0xFFF2C94C),
                    avatarBg: const Color(0xFF332A18),
                  ),
                  _buildNotificationCard(
                    initials: "DP",
                    titleRich: const TextSpan(
                      text: "Dev Patel ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Your problem \"Design a low-cost satellite\" got 10 upvotes.",
                          style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF8B95B3)),
                        )
                      ],
                    ),
                    time: "2h ago",
                    avatarBg: const Color(0xFF17293D),
                    avatarTextColor: const Color(0xFF2F80ED),
                  ),
                  _buildNotificationCard(
                    icon: Icons.wb_sunny_rounded,
                    titleRich: const TextSpan(
                      text: "You have a new follower ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Spacerunner started following you.",
                          style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xFF8B95B3)),
                        )
                      ],
                    ),
                    time: "4h ago",
                    iconColor: const Color(0xFFF2994A),
                    avatarBg: const Color(0xFF332318),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard({
    String? initials,
    IconData? icon,
    required TextSpan titleRich,
    required String time,
    bool hasUnreadDot = false,
    Color avatarBg = const Color(0xFF161C30),
    Color avatarTextColor = Colors.white,
    Color iconColor = Colors.white,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withOpacity(0.03)),
      ),
      child: Row(
        crossAxisAlignment: CrossAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: avatarBg,
            child: initials != null
                ? Text(
                    initials,
                    style: TextStyle(color: avatarTextColor, fontWeight: FontWeight.bold, fontSize: 13),
                  )
                : Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAlignment.start,
              children: [
                RichText(
                  text: titleRich,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: const TextStyle(color: Color(0xFF6C7693), fontSize: 11),
                ),
              ],
            ),
          ),
          if (hasUnreadDot)
            Container(
              margin: const EdgeInsets.only(top: 4, left: 8),
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Color(0xFF5374F9),
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
