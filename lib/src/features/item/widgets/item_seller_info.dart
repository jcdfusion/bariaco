import 'package:flutter/material.dart';

class ItemSellerInfo extends StatelessWidget {
  const ItemSellerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Wrap(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title of the product being sold',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text('\$150', style: Theme.of(context).textTheme.headline1),
              ],
            ),
            const Divider(
              height: 20,
            ),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                      'lib/assets/images/michaelscott.jpg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text('Michael J. Scott',
                        style: Theme.of(context).textTheme.headline3),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          size: 14,
                        ),
                        Text('Scranton, PA')
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
