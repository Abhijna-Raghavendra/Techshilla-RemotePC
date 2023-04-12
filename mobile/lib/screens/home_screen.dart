import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/google_auth.dart';
import 'package:provider/provider.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        backgroundColor: const Color(0xff24293e),
        appBar: AppBar(
          foregroundColor: const Color(0xfff4f5fc),
          backgroundColor: const Color(0xff8ebbff),
          title: const Text(
            'Remote PC',
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
                iconSize: 40,
                itemBuilder: (context) => [
                      PopupMenuItem(
                          onTap: () async {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            await provider.googleLogin();
                            Navigator.pushReplacementNamed(context, '/');
                          },
                          child: const Center(
                            child: Text(
                              'Logout',
                            ),
                          )),
                    ])
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hey! ${user.displayName}',
                style: const TextStyle(color: Color(0xfff4f5fc)),
              )
            ],
          ),
        ));
  }
}
