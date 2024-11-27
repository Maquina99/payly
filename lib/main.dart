import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:payly_test/app.dart'; // Assuming 'app.dart' contains your App class
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await dotenv.load();

  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  // Read the 'initScreen' flag. If null, defaults to 0
  int initScreen = prefs.getInt('initScreen') ?? 0;

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // Pass the 'initScreen' value to your App class
  runApp(App(initScreen: initScreen));
}