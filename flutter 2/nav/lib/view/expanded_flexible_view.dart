import 'package:choose/app/snackbar/snackbar.dart';
import 'package:flutter/material.dart';

class ExpandedFlexible extends StatelessWidget {
  const ExpandedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () {
                showMySnackBar(message: "Container 1", context: context);
              },
              child: Container(
                color: Colors.red,
                width: double.infinity,
              ),
            ),
          ),
          Flexible(
           fit: FlexFit.loose,
           
            child: GestureDetector(
              onDoubleTap: () {
                showMySnackBar(
                    message: "Container 2",
                    context: context,
                    color: Colors.red);
              },
              child: Container(
                color: Colors.yellow,
                height:20,
                width: double.infinity,
              ),
            ),
          ),
          Flexible(
            
            child: GestureDetector(
              onTap: () {
                showMySnackBar(message: "Container 3", context: context);
              },
              child: Container(
                color: Colors.blue,
                width: double.infinity,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

//flexible first takes into consider the given height /width if the widget doesn't fit on the screen then the size is changed

//flexible -> adjust when no space else given width is taken
//IF flexFit is tight then if space is available take all regardless of given = Expanded

//------------------------expanded---------------------------//
// class ExpandedFlexible extends StatelessWidget {
//   const ExpandedFlexible({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: GestureDetector(
//               onTap: () {
//                 showMySnackBar(message: "Container 1", context: context);
//               },
//               child: Container(
//                 color: Colors.red,
//                 width: double.infinity,
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: GestureDetector(
//               onDoubleTap: () {
//                 showMySnackBar(
//                     message: "Container 2",
//                     context: context,
//                     color: Colors.red);
//               },
//               child: Container(
//                 color: Colors.yellow,
//                 height: 300,
//                 width: double.infinity,
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: GestureDetector(
//               onTap: () {
//                 showMySnackBar(message: "Container 3", context: context);
//               },
//               child: Container(
//                 color: Colors.blue,
//                 width: double.infinity,
//               ),
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
