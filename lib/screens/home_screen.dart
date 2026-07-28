import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 14,
              backgroundColor: Color(0xFF7063EC),
              child: Text("CP", style: TextStyle(fontSize: 10, color: Colors.white)),
            ),
            const SizedBox(width: 8),
            const Text("Cosmic Problem", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAlignment.start,
          children: [
            // Stories Row
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildStoryAvatar("Your story", "LB", true, isUser: true),
                  _buildStoryAvatar("Dr.", "AV", true),
                  _buildStoryAvatar("Neha", "NS", true),
                  _buildStoryAvatar("Dev", "DP", true),
                  _buildStoryAvatar("Spacerunn...", "SR", true),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF101526),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white.withOpacity(0.05)),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Color(0xFF6C7693)),
                  hintText: "Search cosmic problems...",
                  hintStyle: TextStyle(color: Color(0xFF6C7693)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Category Pills
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildFilterChip("All", isSelected: true),
                  _buildFilterChip("Space"),
                  _buildFilterChip("Physics"),
                  _buildFilterChip("AI in Space"),
                  _buildFilterChip("Astro"),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Trending Problems Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Trending Problems", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                TextButton(
                  onPressed: () {},
                  child: const Text("See All", style: TextStyle(color: Color(0xFF5374F9))),
                ),
              ],
            ),
            const SizedBox(height: 12),

            _buildProblemCard(
              category: "Space",
              accentColor: Colors.blue,
              title: "How can humans survive on Europa?",
              author: "Dr. Aryan Verma",
              upvotes: 128,
              comments: 45,
            ),
            _buildProblemCard(
              category: "Physics",
              accentColor: Colors.purple,
              title: "Is dark matter made of primordial black holes?",
              author: "Neha Sharma",
              upvotes: 96,
              comments: 32,
            ),
            _buildProblemCard(
              category: "Engineering",
              accentColor: Colors.green,
              title: "Design a low-cost satellite for global internet.",
              author: "Akshay Mishra",
              upvotes: 72,
              comments: 18,
            ),

            const SizedBox(height: 20),
            const Text("Recent Problems", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 12),
            _buildProblemCard(
              category: "Technology",
              accentColor: Colors.cyan,
              title: "Could we build a Dyson sphere with current tech?",
              author: "Lakshay Bhoria",
              upvotes: 142,
              comments: 63,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStoryAvatar(String name, String initials, bool isOnline, {bool isUser = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: isUser
                      ? null
                      : const LinearGradient(colors: [Color(0xFF5374F9), Color(0xFF9163ED)]),
                  border: isUser ? Border.all(color: const Color(0xFF5374F9), width: 2) : null,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFF161C30),
                    child: Text(initials, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              if (isUser)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(color: Color(0xFF5374F9), shape: BoxShape.circle),
                    child: const Icon(Icons.add, size: 14, color: Colors.white),
                  ),
                )
              else if (isOnline)
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFF090C15), width: 2),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Text(name, style: const TextStyle(fontSize: 11, color: Color(0xFF8B95B3))),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        gradient: isSelected ? const LinearGradient(colors: [Color(0xFF5374F9), Color(0xFF9163ED)]) : null,
        color: isSelected ? null : const Color(0xFF101526),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.white : const Color(0xFF8B95B3), fontSize: 13),
      ),
    );
  }

  Widget _buildProblemCard({
    required String category,
    required Color accentColor,
    required String title,
    required String author,
    required int upvotes,
    required int comments,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAlignment.start,
        children: [
          Container(
            width: 4,
            height: 70,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: accentColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(color: accentColor, fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(author, style: const TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                    Row(
                      children: [
                        const Icon(Icons.arrow_upward, size: 14, color: Color(0xFF6C7693)),
                        const SizedBox(width: 2),
                        Text('$upvotes', style: const TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                        const SizedBox(width: 12),
                        const Icon(Icons.chat_bubble_outline, size: 14, color: Color(0xFF6C7693)),
                        const SizedBox(width: 2),
                        Text('$comments', style: const TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
