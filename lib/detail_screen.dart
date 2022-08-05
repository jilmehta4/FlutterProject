import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                          builder: (context) => const CheckOut())
                  );
                }, child: const Text("Purchase"),)
          ]),

        )
        )
    );
  }
}

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Lenskart> lenskartList = [];

    lenskartList.add(Lenskart("Blanc", 37.99, "blanc.jpeg", "Crafted from quality acetate, Blanc is an artsy frame that's perfect for putting inspiration in your day to day routine. Get ready to impress with this design's smart square lenses and transparent blue hue."));
    lenskartList.add(Lenskart("Jupiter", 79.99, "jupiter.jpeg", "Jupite is a dapper aviator frame, crafted in stainless steel. The distinctive brow-bar on these eyeglasses looks iconic and striking."));
    lenskartList.add(Lenskart("Gloss", 51.99, "Gloss.jpeg", "New age style meets old school soul. Extra Gloss combines the best of both worlds with its quality acetate design, smooth white finish, and smart round lenses."));
    lenskartList.add(Lenskart("Tulip", 61.99, "Tulip.jpeg", "Tulip features triple rivets and a classic wayfarer shape. These stylish rich-acetate frames are all you need to upgrade your casual, work and party looks."));
    lenskartList.add(Lenskart("Peony", 49.99, "Peony.jpeg", "Peony's thick acetate frames and minimalist details make for an ultra-modern look. Available in stunning hues, these eyeglasses pair well with casual, work and cocktail outfits."));
    lenskartList.add(Lenskart("Balsam", 47.99, "Balsam.jpeg", "Balsam's chunky wayfarer shape and sophisticated hues make for an ultra-modern look. Up-style your daily casual and business attire with these uber-chic eyeglasses."));
    lenskartList.add(Lenskart("Sabel", 29.99, "Sabel.jpeg", "No matter the occasion, Sabel serves a vibe that's both clever and creative. If you're looking to start your day right, make sure this frame's transparent design is part of your favorite outfit."));
    lenskartList.add(Lenskart("Habit", 69.99, "Habit.jpeg", "No matter the occasion, you can count on Habit to bring out the best in your natural face shape. This stainless steel classic comes complete with bold square lenses and a unique silver black tortoise shell finish."));
    lenskartList.add(Lenskart("Airspace", 79.99, "Aerspace.jpeg", "Airspace is the next evolution of aviator sunglasses. Get ready to seize the day in style with this frame's soulful gold finish and quality stainless steel construction."));
    lenskartList.add(Lenskart("Episode", 101.99, "Episode.jpeg", "Lights, camera, action! Rain or shine, Episode's sleek round lenses and gold tortoise shell finish never fail to impress. Crafted from quality stainless steel for durability and extra comfort."));

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
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
