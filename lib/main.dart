import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

// TODO(codelab user): Get API key
const clientId = 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'Project-X',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
