import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final SupabaseClient _supabaseClient = SupabaseClient(
    'https://eensbcszxntlwvamwhfm.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVlbnNiY3N6eG50bHd2YW13aGZtIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkxNzUxMjgsImV4cCI6MjAxNDc1MTEyOH0.OQbqywuDkDLCyB2eLdJs0xmzlIxNVjRdZhvUvStfIkQ',
  );

  Future<List<Map<String, dynamic>>> obtenerDatos(
      {required String tabla}) async {
    final response = await _supabaseClient.from(tabla).select();

    return response.data as List<Map<String, dynamic>>;
  }
}
