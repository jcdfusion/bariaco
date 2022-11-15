import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.topStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('16 de septiembre 2022')),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('Marca: Kia')
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('Modelo: Forte')
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('Año: 2011')
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('Condición: Usado')
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('Millaje: 106,000')
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('VIN: KNAFT12345678910')
          ),
          Padding(
              padding: EdgeInsets.only(left: 0, bottom: 5),
              child: Text('Marbete: Febrero 2023')
          ),
          // SizedBox(
          //   width: (MediaQuery.of(context).size.width - 28) * 0.25,
          //   child: Wrap(
          //     direction: Axis.vertical,
          //     children: const [
          //       Text('Seller'),
          //       Padding(
          //           padding: EdgeInsets.only(top: 10, bottom: 10),
          //           child: Text('Location')),
          //       Text('Date')],
          //   ),
          // ),
          // SizedBox(
          //   width: (MediaQuery.of(context).size.width - 28) * 0.75,
          //   child: Wrap(
          //     direction: Axis.vertical,
          //     children: const [
          //       Text('Fulano D. Tal'),
          //       Padding(
          //           padding: EdgeInsets.only(top: 10, bottom: 10),
          //           child: Text('Moca, PR')),
          //       Text('16 septiembre 2022')
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

// child: Wrap(
// children: [
// SizedBox(
// width: (MediaQuery.of(context).size.width - 28) * 0.5,
// child: Column(
// children: [
// Text('Seller'),
// ]),
// ),
// SizedBox(
// width: (MediaQuery.of(context).size.width - 28) * 0.5,
// ),
// Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: const [
// Icon(Icons.person_outline_outlined),
// Text('Fulanito P. Detal')
// ],
// ),
// const Divider(
// height: 20, // The margin between elements
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: const [
// Icon(Icons.location_on_outlined),
// Text('Moca, P.R.')
// ],
// ),
// const Divider(
// height: 20, // The margin between elements
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: const [
// Icon(Icons.check_circle_outline),
// Text('Nuevo')
// ],
// ),
// const Divider(
// height: 20, // The margin between elements
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: const [
// Icon(Icons.date_range_outlined),
// Text('16 septiembre 2022')
// ],
// ),
// ],
// ),
// // Container(
// //     margin: const EdgeInsets.only(top: 10.0),
// //     decoration: const BoxDecoration(
// //       //Border color was removed
// //         // border: Border.all(
// //         //   color: Colors.red,
// //         // ),
// //         color: Colors.blueGrey,
// //         borderRadius: BorderRadius.all(Radius.circular(5))
// //     ),
// //     child: Padding(
// //       padding: const EdgeInsets.all(10.0),
// //       child: Wrap(
// //         children: const [
// //           Text('Este es una venta que eswta muy barato, por favor comprenmelo. Gracias. Info al imboj!')
// //         ],
// //       ),
// //     )
// //   )
// ],
// ),
