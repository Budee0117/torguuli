import 'package:flutter/material.dart';
import 'package:torguuli/info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        // primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: Colors.white10,
      ),
      home: const SearchScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.title});

  final String title;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: [IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.close))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Авто тээврийн хэрэгслийн торгуулийн нэгдсэн систем',
              style: TextStyle(
                fontFamily: AutofillHints.impp,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            // const Spacer(flex: 1),
            const SizedBox(
              height: 50,
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(56),
                child: SizedBox(
                    width: 300,
                    height: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )),
                    )),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => Info()
                      )
                    );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'Хайх',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}

//  ListTile(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Info()),
//                   );
//                 },
//                 horizontalTitleGap: 0.0,
//                 title: const Text(
//                   'Хайх',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 tileColor: Colors.blue,
//               ),