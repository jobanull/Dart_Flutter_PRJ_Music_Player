import 'package:flutter/material.dart';
import 'package:music_player/screen/homepage/homepage.dart';

class ForTest extends StatefulWidget {
  const ForTest({super.key});

  @override
  State<ForTest> createState() => _ForTestState();
}

class _ForTestState extends State<ForTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            child: Text("Pindah"),
          ),
        ),
      ),
    );
  }
}

// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   @override
//   void initState() {
//     print("init state");
//     super.initState();
//   }

//   // @override
//   // void didUpdateWidget(covariant ForTest oldWidget) {
//   //   print("didUpdateWidget");
//   //   super.didUpdateWidget(oldWidget);
//   // }

//   @override
//   void deactivate() {
//     print("deactivate");
//     super.deactivate();
//   }

//   @override
//   void didChangeDependencies() {
//     print("didChangeDependencies");
//     super.didChangeDependencies();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print("dispose");
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Container(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => SecondPage(),
//                   ));

//               // Navigator.pushAndRemoveUntil(
//               //     context,
//               //     MaterialPageRoute(
//               //       builder: (context) => SecondPage(),
//               //     ), (route) {
//               //   print("route");
//               //   return false;
//               // });
//             },
//             child: Text("Move"),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ThirdPage extends StatelessWidget {
//   const ThirdPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
