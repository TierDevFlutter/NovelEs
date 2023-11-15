import 'package:flutter/material.dart';
import 'package:noveles/ui/services/supabase_service.dart';

import '../widget/tablat_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SupabaseService sbService = SupabaseService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de Supabase'),
      ),
      body: FutureBuilder(
        future: sbService.obtenerDatos(tabla: 'Novelas'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            List<Map<String, dynamic>> datos =
                snapshot.data as List<Map<String, dynamic>>;
            return TablaWidget(datos: datos);
          }
        },
      ),
    );
  }
}
