import 'package:flutter/material.dart';

class ItemSellerContact extends StatelessWidget {
  const ItemSellerContact({super.key});

  @override
  Widget build(BuildContext context) {
    var fillParentWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: (fillParentWidth - 80) * 0.5,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined, size: 14),
              label: const Text(
                'Text',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: (fillParentWidth - 80) * 0.5,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(143, 143, 239, 1)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(18))),
              icon: const Icon(Icons.phone, size: 14),
              label: const Text(
                'Call',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
    // return SizedBox(
    //   height: 50,
    //   //margin: const EdgeInsets.all(10),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       ActionChip(
    //         avatar: const Icon(
    //           Icons.message_outlined,
    //           size: 15,
    //         ),
    //         padding: const EdgeInsets.all(10.0),
    //         backgroundColor: const Color.fromRGBO(63, 191, 191, 1),//const Color.fromRGBO(139, 202, 200, 1),
    //         // TODO: Make part of a theme
    //         //avatar: const Icon(Icons.messenger),
    //         label: const Text('Escribir'),
    //         onPressed: () {},
    //       ),
    //       const VerticalDivider(),
    //       ActionChip(
    //         avatar: const Icon(
    //           Icons.phone,
    //           size: 15,
    //         ),
    //         padding: const EdgeInsets.all(10.0),
    //         backgroundColor: const Color.fromRGBO(143, 143, 239, 1),//Color.fromRGBO(185, 227, 225, 1),
    //         // TODO: Make part of a theme
    //         //avatar: const Icon(Icons.phone),
    //         label: const Text('Llamar'),
    //         onPressed: () {},
    //       )
    //     ],
    //   ),
    // );
  }
}
