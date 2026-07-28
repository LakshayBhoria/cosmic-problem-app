import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tags = ["Mars", "Black Hole", "Exoplanet", "AI", "Rocket", "Quantum Physics", "Nano", "Dark Energy"];

    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Explore", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAlignment.start,
          children: [
            // Search Input
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF101526),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Color(0xFF6C7693)),
                  hintText: "Search topics, keywords, tags...",
                  hintStyle: TextStyle(color: Color(0xFF6C7693)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Popular Tags Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Popular Tags", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                TextButton(onPressed: () {}, child: const Text("See All", style: TextStyle(color: Color(0xFF5374F9)))),
              ],
            ),

            // Tag Cloud
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: tags.map((tag) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF101526),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(tag, style: const TextStyle(color: Color(0xFF8B95B3), fontSize: 13)),
              )).toList(),
            ),
            const SizedBox(height: 24),

            // Cards List
            Expanded(
              child: ListView(
                children: [
                  _buildExploreCard("Could we build a Dyson Sphere?", "Space", 142, 63),
                  _buildExploreCard("What is the true nature of dark energy?", "Physics", 98, 40),
                  _buildExploreCard("How to develop propulsion system for interstellar travel?", "Engineering", 86, 27),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreCard(String title, String tag, int upvotes, int comments) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF5374F9).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(tag, style: const TextStyle(color: Color(0xFF5374F9), fontSize: 11, fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  const Icon(Icons.arrow_upward, size: 14, color: Color(0xFF6C7693)),
                  Text(" $upvotes  ", style: const TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                  const Icon(Icons.chat_bubble_outline, size: 14, color: Color(0xFF6C7693)),
                  Text(" $comments", style: const TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
