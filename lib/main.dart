import 'package:flutter/material.dart';
import 'package:group_project_2/lenskart.dart';
import 'package:group_project_2/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage("images/logo.jpg")),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondRoute(title: "Lenskart"))
              );
            }, child: const Text("Shop"))
          ],
        ),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    List<Lenskart> lenskartList = [];

    lenskartList.add(Lenskart("Blanc", 37.99, "blanc.jpg", "Crafted from quality acetate, Blanc is an artsy frame that's perfect for putting inspiration in your day to day routine. Get ready to impress with this design's smart square lenses and transparent blue hue."));
    lenskartList.add(Lenskart("Jupiter", 79.99, "jupiter.jpg", "Jupite is a dapper aviator frame, crafted in stainless steel. The distinctive brow-bar on these eyeglasses looks iconic and striking."));
    lenskartList.add(Lenskart("Gloss", 51.99, "Gloss.jpg", "New age style meets old school soul. Extra Gloss combines the best of both worlds with its quality acetate design, smooth white finish, and smart round lenses."));
    lenskartList.add(Lenskart("Tulip", 61.99, "Tulip.jpg", "Tulip features triple rivets and a classic wayfarer shape. These stylish rich-acetate frames are all you need to upgrade your casual, work and party looks."));
    lenskartList.add(Lenskart("Peony", 49.99, "Peony.jpg", "Peony's thick acetate frames and minimalist details make for an ultra-modern look. Available in stunning hues, these eyeglasses pair well with casual, work and cocktail outfits."));
    lenskartList.add(Lenskart("Balsam", 47.99, "Balsam.jpg", "Balsam's chunky wayfarer shape and sophisticated hues make for an ultra-modern look. Up-style your daily casual and business attire with these uber-chic eyeglasses."));
    lenskartList.add(Lenskart("Sabel", 29.99, "Sabel.jpg", "No matter the occasion, Sabel serves a vibe that's both clever and creative. If you're looking to start your day right, make sure this frame's transparent design is part of your favorite outfit."));
    lenskartList.add(Lenskart("Habit", 69.99, "Habit.jpg", "No matter the occasion, you can count on Habit to bring out the best in your natural face shape. This stainless steel classic comes complete with bold square lenses and a unique silver black tortoise shell finish."));
    lenskartList.add(Lenskart("Airspace", 79.99, "Aerspace.jpg", "Airspace is the next evolution of aviator sunglasses. Get ready to seize the day in style with this frame's soulful gold finish and quality stainless steel construction."));
    lenskartList.add(Lenskart("Episode", 101.99, "Episode.jpg", "Lights, camera, action! Rain or shine, Episode's sleek round lenses and gold tortoise shell finish never fail to impress. Crafted from quality stainless steel for durability and extra comfort."));

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
      ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: lenskartList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(lenskart: lenskartList[index])
                      )
                  );
                },
                child: Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Hero(
                          tag: lenskartList[index].photo,
                          child:
                          Image(
                              width: 125,
                              height: 125,
                              image: AssetImage(
                                "images/"+ lenskartList[index].photo,
                              )
                          ),
                        ),
                        Text(lenskartList[index].name),
                        Text(lenskartList[index].price.toString())
                      ],)
                )
            );
          }
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
