import 'package:flutter/material.dart';
import 'package:image_view/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var url = [
    "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
    "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Photo Show")),
      body: 
      SingleChildScrollView(
        child: Column(
        children: List.generate(url.length, (index) {
         return GestureDetector(
          onTap: (){
            NavigatorState nav = Navigator.of(context);
            nav.push(MaterialPageRoute(builder: ((context) => Page2("title", url[index])))).then((value) => 
            print(value)
            );
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Image.network(url[index]),),
         
         );
         
        } 
        ),
        ),
      )
      
    );

    // return ElevatedButton(onPressed: (){
    //   setState(() {
    //     _index += 1;
    //   });
    //   print(_index);
    // }, child: Text("data"));

  }
}
