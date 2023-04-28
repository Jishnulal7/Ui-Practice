import 'package:flutter/material.dart';
import 'package:ui_challenges/animation/fade_animation.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _pageController, children: <Widget>[
        newPage(
            page: '1',
            rating1: '4.6',
            rating2: '(6400)',
            image: 'assets/images/1.jpg',
            title: 'India',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
        newPage(
            page: '2',
            rating1: '4.0',
            rating2: '(3200)',
            image: 'assets/images/2.webp',
            title: 'Usa',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
        newPage(
            page: '3',
            rating1: '4.1',
            rating2: '(2300)',
            image: 'assets/images/3.jpg',
            title: 'China',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
        newPage(
            page: '4',
            rating1: '4.5',
            rating2: '(5400)',
            image: 'assets/images/4.jpg',
            title: 'Canada',
            description:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")
      ]),
    );
  }
}

Widget newPage({image, title, description, rating1, rating2, page}) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage(image),
      fit: BoxFit.cover,
    )),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomCenter, stops: const [
        .3,
        .9,
      ], colors: [
        Colors.black.withOpacity(.8),
        Colors.black.withOpacity(.2)
      ])),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                page,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '/4',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                  Text(
                    rating1,
                    style: const TextStyle(color: Colors.white70),
                  ),
                  Text(
                    rating2,
                    style: const TextStyle(color: Colors.white38),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    description,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        height: 2,
                        fontSize: 15),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'READ MORE',
                style: TextStyle(color: Colors.white),
              )
            ],
          ))
        ]),
      ),
    ),
  );
}
