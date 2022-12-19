// // ignore_for_file: sort_child_properties_last, must_be_immutable, camel_case_types

// import 'package:flutter/material.dart';

// ignore_for_file: prefer_typing_uninitialized_variables

// class clothes extends StatelessWidget {
//   clothes({Key? key, required this.image, required this.data})
//       : super(key: key);
//   String image;
//   String data;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             Container(
//               height: 170,
//               width: 180,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: NetworkImage(image),
//                     fit: BoxFit.fill,
//                   ),
//                   border: Border.all()),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 140),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                         color: const Color.fromARGB(255, 219, 216, 216))),
//                 child: Center(child: Text(data)),
//                 height: 40,
//                 width: 180,
//               ),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Clothes extends StatelessWidget {
  Clothes({super.key, required this.image, required this.subtitle});
  final String image;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 166.5,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 23,
          width: 180,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 131, 101, 13),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)),
              border:
                  Border.all(color: Color.fromARGB(255, 68, 67, 67), width: 1)),
          child: Center(
            child: Text(
              subtitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
