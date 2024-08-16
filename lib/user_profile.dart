import 'package:flutter/material.dart';
import 'package:userprofileview/card.dart';

import 'package:userprofileview/edit_profile.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile '),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Action when search icon is pressed
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    child: Text(
                      "M",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("User Name"),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("username@gamil.com"),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditProfile()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,

                            shadowColor: Colors.green,
                            elevation: 5, // Elevation of the button
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // Rounded corners
                            ),
                          ),
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: MyCardList(), // This calls your MyCardList widget
          ),
        ],
      ),
    );
  }
}
