import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100), 
            child: AppBar(
            backgroundColor: Colors.indigo[600],
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              icon: const Icon(
                color: Colors.white,
                Icons.arrow_back
                )
                ),
            actions: [IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.close))]
            
      )
            )    
      ),
    );
  }
}

// class Header extends StatelessWidget {
//   const Header({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // 
//       appBar: AppBar(
//         // backgroundColor: Colors.indigo[900],
//       ),
//     );
//   }
// }
