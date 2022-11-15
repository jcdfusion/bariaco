import 'package:flutter/material.dart';

class ItemPicture extends StatelessWidget {
  const ItemPicture({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Wrap(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                // Minus 28 to account for the margins.
                width: (MediaQuery.of(context).size.width) - 28,
                height: (MediaQuery.of(context).size.height) * 0.5,
                // color: Colors.black,
                // child: FittedBox(
                //   fit: BoxFit.scaleDown,
                //   child: Image.asset(
                //       '/home/dudi/FlutterProjects/lib/assets/compressor.jpg'),
                // )
                decoration: const BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/Dunder-Mifflin.jpg'),
                      fit: BoxFit.fitHeight,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Text('Pic1')),
              Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Text('Pic2')),
              Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Text('Pic3')),
              Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Text('Pic4')),
              Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Text('Pic5')),
            ],
          ),
          // const Divider(
          //   height: 20, // The margin between elements
          // ),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: (MediaQuery.of(context).size.width - 28) * 0.5,
          //       child: Text('\$150'),
          //     ),
          //     SizedBox(
          //       width: (MediaQuery.of(context).size.width - 28) * 0.5,
          //       child: Wrap(
          //         alignment: WrapAlignment.spaceEvenly,
          //         children: const [
          //           Icon(Icons.report_gmailerrorred),
          //           Icon(Icons.share),
          //           Icon(Icons.favorite_border),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
