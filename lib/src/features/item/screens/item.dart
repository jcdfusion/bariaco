import 'package:flutter/material.dart';
import '../../home/widgets/home_drawer.dart';
import '../widgets/item_description.dart';
import '../widgets/item_details.dart';
import '../widgets/item_picture.dart';
import '../widgets/item_seller_contact.dart';
import '../widgets/item_seller_info.dart';
import '../widgets/item_share.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop()),
        title: const SizedBox(
          height: 20,
          child: Center(
              child: Image(
                  image: AssetImage('lib/assets/images/mercado_logo.png'))),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          ItemPicture(),
          ItemSellerInfo(),
          ItemDetails(),
          ItemShare(),
          ItemDescription()
        ],
      )),
      bottomNavigationBar: const ItemSellerContact(),
    );
  }
}
