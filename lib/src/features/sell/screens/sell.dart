import 'package:flutter/material.dart';

import '../widgets/listing_photo.dart';
import '../widgets/listing_form.dart';

class SellScreen extends StatelessWidget {
  const SellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: const [ListingPhoto(), ListingForm()],
        ),
      ),
    );
  }
}
