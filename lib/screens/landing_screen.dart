import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090C15),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Spacer(),
              // Planet Graphic Element
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          const Color(0xFF1B2A52),
                          const Color(0xFF090C15).withOpacity(0.2),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF121B35),
                    ),
                  ),
                  // Ring
                  Transform.rotate(
                    angle: -0.2,
                    child: Container(
                      width: 240,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF4C8DF5).withOpacity(0.4),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  // Small Moon Accent
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF5374F9),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF5374F9).withOpacity(0.6),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // App Title
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFF8FB3FF), Color(0xFFC0A0FF)],
                ).createShader(bounds),
                child: const Text(
                  "COSMIC\nPROBLEM",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.black,
                    color: Colors.white,
                    letterSpacing: 2,
                    height: 1.1,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Think. Question. Explore.",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              const Text(
                "Solve the mysteries of the universe together.",
                style: TextStyle(color: Color(0xFF6C7693), fontSize: 13),
              ),

              const Spacer(),

              // Action Buttons
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF5374F9), Color(0xFF9163ED)],
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFF101526),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white.withOpacity(0.08)),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Explore as Guest", style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
