import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
        title: const Text("My Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAlignment: CrossAlignment.start,
          children: [
            // Header Profile Info
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF101526),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAlignment: CrossAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFF5374F9), width: 2),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Color(0xFF161C30),
                          child: Text("LB", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAlignment: CrossAlignment.start,
                          children: [
                            const Text("Lakshay Bhoria", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                            const Text("@lakshay.bhoria", style: TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                            const SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: const Color(0xFF5374F9).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text("⚡ Galaxy Thinker", style: TextStyle(color: Color(0xFF5374F9), fontSize: 11)),
                            )
                          ],
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF6C7693)),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text("Edit", style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text("AIML student | Space enthusiast | Always curious about the universe 🚀", style: TextStyle(color: Color(0xFF8B95B3), fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Metrics Grid
            Row(
              children: [
                _buildStatBox("24", "Posts"),
                _buildStatBox("12", "Answers"),
                _buildStatBox("4", "Followers", subtitle: "tap to view"),
                _buildStatBox("3", "Following", subtitle: "tap to view"),
              ],
            ),
            const SizedBox(height: 20),

            // Story Item
            const Text("Your Story", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF101526),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  CircleAvatar(radius: 16, backgroundColor: Color(0xFF161C30), child: Text("LB", style: TextStyle(fontSize: 10, color: Colors.white))),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAlignment: CrossAlignment.start,
                      children: [
                        Text("Active story", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                        Text("Europa's subsurface ocean... • 2m ago", style: TextStyle(color: Color(0xFF6C7693), fontSize: 11)),
                      ],
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Color(0xFF6C7693)),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Achievements
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Achievements", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                TextButton(onPressed: () {}, child: const Text("See All", style: TextStyle(color: Color(0xFF5374F9)))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBadge("🌍", "Problem\nSolver"),
                _buildBadge("⭐", "Rising Star"),
                _buildBadge("🚀", "Space\nExplorer"),
                _buildBadge("🏆", "Top\nContributor"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatBox(String count, String label, {String? subtitle}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF101526),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(count, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
            Text(label, style: const TextStyle(color: Color(0xFF6C7693), fontSize: 11)),
            if (subtitle != null) Text(subtitle, style: const TextStyle(color: Color(0xFF5374F9), fontSize: 8)),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(String emoji, String title) {
    return Container(
      width: 75,
      height: 85,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xFF8B95B3), fontSize: 9),
          )
        ],
      ),
    );
  }
}
