import 'package:bariaco/src/features/home/screens/home.dart';
import 'package:bariaco/utils/mercado_theme.dart';
import 'package:bariaco/utils/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
