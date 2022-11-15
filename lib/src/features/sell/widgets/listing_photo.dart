import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:bariaco/utils/mercado_colors.dart';

import '../../camera/screens/camera.dart';

class ListingPhoto extends StatelessWidget {
  const ListingPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    double bottomPadding = 15;
    return Container(
      //height: 200,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: Text('Listing Photo',
                style: Theme.of(context).textTheme.headline2),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(
                onPressed: () async {
                  // Obtain a list of the available cameras on the device.
                  final cameras = await availableCameras().then((value) =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  TakePictureScreen(camera: value.first,))));
                },
                icon: const Icon(Icons.photo_camera),
                label: const Text('Camera'),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.photo),
              label: const Text('Gallery'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(mercadoSecondary),
                // padding: MaterialStateProperty.all(const EdgeInsets.all(18))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
