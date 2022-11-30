import 'package:bariaco/src/features/home/widgets/test1.dart';
import 'package:bariaco/src/features/home/widgets/test2.dart';
import 'package:bariaco/src/features/home/widgets/test3.dart';
import 'package:bariaco/src/features/home/widgets/test4.dart';
import 'package:bariaco/src/features/home/widgets/test5.dart';
import 'package:bariaco/src/features/home/widgets/test6.dart';
import 'package:bariaco/utils/mercado_colors.dart';
import 'package:flutter/material.dart';
import '../../sell/screens/sell.dart';
import '../widgets/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.grain),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const SizedBox(
          height: 20,
          child: Center(
              child: Image(
                  image: AssetImage('lib/assets/images/mercado_logo.png'))),
        ),
      ),
      body: Center(
          child: GridView.count(
        padding: const EdgeInsets.all(5),
        crossAxisCount: 3,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: const Test1(),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const Test2(),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const Test3(),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const Test4(),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const Test5(),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const Test6(),
          ),
        ],
      )
          // Column(
          //   children: const [Text('Hello Python')],
          // ),
          ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SellScreen()),
          );
        },
        icon: const Icon(Icons.monetization_on),
        label: const Text('Start Selling'),
        backgroundColor: mercadoPrimary,
      ),
    );
  }
}
