import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  final List<String> images = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
  ];

  final List<String> names = [
    'Restaurant 1',
    'Restaurant 2',
    'Restaurant 3',
    'Restaurant 4',
    'Restaurant 5',
    'Restaurant 6',
    'Restaurant 7',
    'Restaurant 8',
    'Restaurant 9',
    'Restaurant 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          title: Text('Fortuna'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 8.0, 8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(images[index]),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
              width: 100,
              child: Text(
                'Restaurant',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 310,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Restoran makanan Indonesia yang enak dan lezat',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.grey),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Dishes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 310,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Restoran makanan Indonesia yang enak dan lezat',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.yellow),
                                  Icon(Icons.star,
                                      size: 16, color: Colors.grey),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
