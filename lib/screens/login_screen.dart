import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      body: Column(
        children: [
          const SizedBox(height: 80),

          // Header Cosmic Emblem
          Center(
            child: Container(
              width: 180,
              height: 180,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF10172A),
              ),
              child: Center(
                child: ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xFF8FB3FF), Color(0xFFC0A0FF)],
                  ).createShader(bounds),
                  child: const Text(
                    "COSMIC\nPROBLEM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),

          // Bottom Login Modal Card
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: const BoxDecoration(
              color: Color(0xFF0D1222),
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Welcome Back!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 4),
                const Text("Login to continue your cosmic journey", style: TextStyle(color: Color(0xFF6C7693), fontSize: 13)),
                const SizedBox(height: 24),

                _buildSocialButton(icon: Icons.g_mobiledata, label: "Continue with Google"),
                const SizedBox(height: 12),
                _buildSocialButton(icon: Icons.email_outlined, label: "Continue with Email"),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: Color(0xFF1E2640))),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text("or", style: TextStyle(color: Color(0xFF6C7693), fontSize: 12)),
                      ),
                      Expanded(child: Divider(color: Color(0xFF1E2640))),
                    ],
                  ),
                ),

                _buildSocialButton(icon: Icons.phone_outlined, label: "Login with Phone"),
                const SizedBox(height: 24),

                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Color(0xFF6C7693), fontSize: 13),
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(color: Color(0xFF5374F9), fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({required IconData icon, required String label}) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF161C30),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14)),
        ],
      ),
    );
  }
}
