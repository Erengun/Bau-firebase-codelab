import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'main.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is not signed in
          if (!snapshot.hasData) {
            return SignInScreen(
              headerBuilder: (context, constraints, shrinkOffset) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('assets/flutterfire_300x.png'),
                );
              },
              providers: [
                EmailAuthProvider(),
                GoogleProvider(clientId: clientId)
              ],
              subtitleBuilder: (context, action) {
                if (action == AuthAction.signIn) {
                  return const Text('Sign in to use Project-X');
                } else if (action == AuthAction.signUp) {
                  return const Text('Sign up to use Project-X');
                }
                return const Text('Welcome to Project-X');
              },
              footerBuilder: (context, action) {
                return const Text(
                    'Powered by Firebase.\n By signing in you accept Project-X\'s Terms of Service and Privacy Policy.');
              },
              sideBuilder: (context, constraints) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset('assets/flutterfire_300x.png'),
                );
              },
            );
          }

          return const HomeScreen(
            title: 'Project-X Home Screen',
          );
        });
  }
}
