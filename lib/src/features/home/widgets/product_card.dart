import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        height: 250,
        child: Card(
          child: Column(
            children: [
              Container(
                height: 196,
                //color: Colors.amber,
                decoration: const BoxDecoration(
                    color: Colors.black54,
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/compressor.jpg'),
                      fit: BoxFit.scaleDown,
                    )),
              ),
              Container(
                height: 46,
                color: Colors.white70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("\$ 999,999,999"),
                    Row(
                      children: const [
                        Icon(Icons.location_on_outlined),
                        Text('Moca')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
