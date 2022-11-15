import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Wrap(
          children: [
            Row(
              children: [
                Text('Description',style: Theme.of(context).textTheme.headline2),
              ],
            ),
            // const Divider(
            //   height: 20, // The margin between elements
            // ),
            Wrap(
              children: const [
                SelectableText('Se vende bla bla bla. Es nuevo de paquete. Me costo \$*.**. Lo vendo porque no lo necesito. Interasdos al inbox.')
              ],
            ),
          ],
        ),
    );
  }
}
