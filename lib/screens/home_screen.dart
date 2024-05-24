import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internee/screens/screen_with_model.dart';
import 'package:internee/widgets/carousel_slider_widget.dart';
import 'package:internee/widgets/see_all_text_widget.dart';
import '../model/internship.dart';
import '../widgets/internship_card.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Internship> internships = [
    Internship(
      imageUrl: 'images/wordpress.jpeg', // Replace with actual image URLs
      title: 'WordPress',
      category: 'Website Design',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/Figma.png',
      title: 'Figma',
      category: 'Graphic Design',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/flutter.png',
      title: 'Flutter',
      category: 'MobileApp Development',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/react.png',
      title: 'React',
      category: 'Web Development',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/Php.jpeg',
     title:  'PHP',
     category:  'Back end Development',
      buttonText: 'Apply Now',
    ),
  ];
  final List<Internship> courses = [
    Internship(
      imageUrl: 'images/web3.jpeg', // Replace with actual image URLs
      title: 'Web 3.0 ',
      category: 'Website Development',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/nodejs.png',
      title: 'NoeJS',
      category: 'Website Development',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/nextjs.jpeg',
      title: 'NextJS',
      category: 'Website Design',
      buttonText: 'Apply Now',
    ),
    Internship(
      imageUrl: 'images/react.png',
      title: 'React',
      category: 'Web Development',
     buttonText:  'Apply Now',
    ),
    Internship(
      imageUrl: 'images/android.png',
      title: 'Android',
      category: 'Mobile App',
      buttonText: 'Apply Now',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Internee.pk',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //carousal slider
            CarouselSliderWidget(),
            //rate our app
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 9),
                          child: Text('Rate our App!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Rate our app and leave your feedback \n for better internship opportunity',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.star,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SeeAllText(
              onpress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScreenWithModel();
                }));
              },
              txt: 'Featured Internships',
            ),
            SizedBox(
              height: 250, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: internships.length,
                itemBuilder: (context, index) {
                  return InternshipCard(internships[index]);
                },
              ),
            ),

            SeeAllText(
              onpress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScreenWithModel();
                }));
              },
              txt: 'Populat Technologies',
            ),
            SizedBox(
              height: 250, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: internships.length,
                itemBuilder: (context, index) {
                  return InternshipCard(courses[index]);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
