import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffE8F9FF)),
        child: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    spacing: 350,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.settings, color: Colors.black),
                      ),
                      Icon(Icons.logout),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    spacing: 12,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('images/profile.png')
                      ),
                      Text(
                        'Hayat Nabi',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('@hayat_69', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffC4D9FF),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Text(
                                '271',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Followers'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffC4D9FF),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Followings'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffC4D9FF),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Fav Items'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffC4D9FF),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Text(
                                'Joined',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Jan 2025'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Hi, I'm a Second-semester Software Engineering student with a strong interest in app development, especially using Flutter and Dart. I've worked on several projects, including a LinkedIn clone using HTML, CSS, and JavaScript, a C++ Snake Game, and an Airline Reservation System using OOP in C++. I'm also passionate about UI/UX design and have started setting up my Upwork profile as a Flutter developer. Alongside technical skills, I'm actively working on improving my English communication and comprehension abilities.")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
