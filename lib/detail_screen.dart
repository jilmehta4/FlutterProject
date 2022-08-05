import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_project_2/cart_screen.dart';
import 'package:group_project_2/lenskart.dart';

class DetailScreen extends StatelessWidget {

  const DetailScreen({Key? key, required this.lenskart}) : super(key: key);

  final Lenskart lenskart;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(lenskart.name),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child:
          Center(child:
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Hero(
              tag: lenskart.photo,
              child: Image(
                    width: 300,
                    height: 300,
                    image: AssetImage(
                    "images/"+ lenskart.photo,
                  )
            ),
            ),
            Text(lenskart.name),
            Text(lenskart.description),
                ElevatedButton(onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CartScreen())
                  );
                }, child: const Text("Purchase"),)
          ]),

        )
        )
    );
  }
}
//
// class CheckOut extends StatelessWidget {
//   const CheckOut({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('title'),
//       ),
//       body:
//       ListView.builder(
//           padding: const EdgeInsets.all(8),
//           itemCount: lenskartList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DetailScreen(lenskart: lenskartList[index])
//                       )
//                   );
//                 },
//                 child: Card(
//                     color: Colors.blue,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Hero(
//                           tag: lenskartList[index].photo,
//                           child:
//                           Image(
//                               width: 125,
//                               height: 125,
//                               image: AssetImage(
//                                 "images/"+ lenskartList[index].photo,
//                               )
//                           ),
//                         ),
//                         Text(lenskartList[index].name),
//                         Text(lenskartList[index].price.toString())
//                       ],)
//                 )
//             );
//           }
//       ),
//     ); // This trailing comma makes auto-formatting nicer for build methods.
//   }
// }
