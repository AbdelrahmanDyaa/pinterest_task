import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinterestPage(),
    );
  }
}

class PinterestPage extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/hunterxhunter.jpg',
    'assets/hunterxhunter1.jpg',
    'assets/22.png',
    'assets/hunterxhunter1.jpg',
    'assets/hunterxhunter.jpg',
    'assets/22.png',
    'assets/hunterxhunter1.jpg',
    'assets/hunterxhunter.jpg',
    'assets/hunterxhunter.jpg',
    'assets/22.png',
    'assets/hunterxhunter.jpg',
    'assets/hunterxhunter.jpg',
    'assets/22.png',
    'assets/hunterxhunter.jpg',
    'assets/hunterxhunter.jpg',
    'assets/hunterxhunter1.jpg',
    'assets/hunterxhunter.jpg',
    'assets/22.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to Pinterest\n Pick 5 or more topics',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 40,),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Next'),
              ),

            ],
          ),



          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return GridItem(imageUrl: imageUrls[index], text: 'Image $index');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  GridItem({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Image
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          bottom: 8,
          left: 6,
          right: 8,
          child: Container(
            color: Colors.grey.withOpacity(0.5),
            padding: EdgeInsets.all(8),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
