import 'package:flutter/material.dart';

class CreateProblemScreen extends StatelessWidget {
  const CreateProblemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Create a New Problem", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF5374F9), Color(0xFF9163ED)]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: const Text("Post", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAlignment.start,
          children: [
            _buildLabel("Category"),
            _buildDropdownField("Select category"),
            const SizedBox(height: 16),

            _buildLabel("Problem Title"),
            _buildInputField("Write a clear and specific title", maxLines: 1),
            const SizedBox(height: 16),

            _buildLabel("Structured Problem", subtitle: "(helps better discussion)"),
            _buildInputField("What is the problem?", maxLines: 3, maxLength: 100),
            const SizedBox(height: 16),

            _buildLabel("Why it matters?"),
            _buildInputField("Why is this problem important?", maxLines: 3, maxLength: 300),
            const SizedBox(height: 16),

            _buildLabel("Current Knowledge"),
            _buildInputField("What do we already know about this?", maxLines: 3, maxLength: 300),
            const SizedBox(height: 20),

            // Bottom Attachment Toolbar
            Row(
              children: [
                _buildIconButton(Icons.camera_alt_outlined),
                const SizedBox(width: 12),
                _buildIconButton(Icons.attach_file),
                const SizedBox(width: 12),
                _buildIconButton(Icons.link),
                const SizedBox(width: 12),
                _buildIconButton(Icons.insert_drive_file_outlined),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String title, {String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          text: title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          children: [
            if (subtitle != null)
              TextSpan(
                text: " $subtitle",
                style: const TextStyle(color: Color(0xFF6C7693), fontWeight: FontWeight.normal, fontSize: 12),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(hint, style: const TextStyle(color: Color(0xFF6C7693))),
          const Icon(Icons.keyboard_arrow_down, color: Color(0xFF6C7693)),
        ],
      ),
    );
  }

  Widget _buildInputField(String hint, {int maxLines = 1, int? maxLength}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAlignment.end,
        children: [
          TextField(
            maxLines: maxLines,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Color(0xFF6C7693)),
              border: InputBorder.none,
            ),
          ),
          if (maxLength != null)
            Text("0/$maxLength", style: const TextStyle(color: Color(0xFF6C7693), fontSize: 10)),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF101526),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: const Color(0xFF6C7693), size: 20),
    );
  }
}
