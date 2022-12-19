// {"title":"What you are looking for?",
// "images":["https://images.meesho.com/images/products/149556581/mhkmh_400.jpg",
// "https://images.meesho.com/images/products/149556581/mhkmh_400.jpg"]
// }

class Model {
  String? titl;
  List<dynamic> imges;
  Model({required this.imges, this.titl});
  factory Model.from(Map<String, dynamic> json) {
    // final a = json['images'];
    // final List<String> b = List<String>.from(a);

    return Model(
        imges: (json['images'] as List<dynamic>).map((e) => e).toList(),
        titl: json['title']);
  }
}


// {"title":"What you are looking for?",
// "images":["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOx-rJJCKQIabRpB1IzKiaN0yejcLSI8VMA&usqp=CAU",
           
//                 "https://image.made-in-china.com/2f0j00UFmtsDgBCorL/High-Waist-Stock-Women-Denim-Jeans-Nice-Washing-Fashion-Apparel-Spandex-Jeans-for-Women-Casual-Ripped-Jeans-Ladies-Hop-Hip-Denim-Pants-Hole-Trousers-Used-Jeans.jpg",
         
        
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvNXhGeKgPmnCECJhpvHNQE6I3E6QPE0ecIA&usqp=CAU",
         
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZ3q-BHxFF0v28cRrioocIeecUPjIhsyr7g&usqp=CAU",
          
           
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD46r4Ak4MLCxZWST1iuhYxetbdRzGsUeBsA&usqp=CAU",
          
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlG-uw5tNMQr1vdYDlwXhSW44bIUtNa2Phw0OlPq1mEYxY8F2aJ298xrotr7B-GJM6mZU&usqp=CAU",
           
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY3TIOumKXMaAl5jRt4y8fIM61D-g9iolg6A&usqp=CAU",
          
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-NThMaYmSZANzOmdROM3CnuPqPpzgOVEjw&usqp=CAU",
           
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsmy-XTOpsuqCJbMMUVy89dsuqu__EtPdKuQ&usqp=CAU",
         
//                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0ZLWvzu4N0uh6Tp1R70mnKK63I0hOEk0yQ&usqp=CAU"
//            ]
//   }

                