import 'package:flutter/material.dart';
import 'package:soft_ride_driver/Firebase_Service/global.dart';
import 'package:soft_ride_driver/authentication/sign_in_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(
        child: const Text(
          "Sign Out",
        ),
        onPressed: () {
          fAuth.signOut();
          Navigator.push(context, MaterialPageRoute(builder: (c)=> const SignInScreen()));
        },
      ),
    );
  }
}