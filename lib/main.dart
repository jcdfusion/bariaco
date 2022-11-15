import 'package:bariaco/src/features/home/screens/home.dart';
import 'package:bariaco/utils/mercado_theme.dart';
import 'package:bariaco/utils/providers.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Client client = Client()
    .setEndpoint('http://10.0.2.2/v1') // Your Appwrite Endpoint
    .setProject('mercadopr') // Your project ID
    .setSelfSigned(status: true); // For self s

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Bariaco());
}

class Bariaco extends StatelessWidget {
  const Bariaco({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: providersList,
        child: MaterialApp(
            theme: MercadoTheme().lightTheme, home: const HomeScreen()));
  }
}
