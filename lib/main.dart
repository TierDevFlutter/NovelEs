import 'package:flutter/material.dart';
import 'package:noveles/core/app/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://eensbcszxntlwvamwhfm.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVlbnNiY3N6eG50bHd2YW13aGZtIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkxNzUxMjgsImV4cCI6MjAxNDc1MTEyOH0.OQbqywuDkDLCyB2eLdJs0xmzlIxNVjRdZhvUvStfIkQ',
  );

  runApp(
    const App(),
  );
}
