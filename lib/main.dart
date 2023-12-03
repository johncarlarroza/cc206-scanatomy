import 'package:flutter/material.dart';
import 'package:exer6n7/components/mission.dart';
import 'package:exer6n7/components/about_us.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Poppins-BoldItalic',
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [HomePage(), MissionPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Feedback'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/pics/backg5.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/pics/profile${index + 1}.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 140.0),
                    child: Text(
                      "What are we?",
                      style: TextStyle(fontSize: 40, fontFamily: 'Poppins', color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Scanatomy is an innovative tool which combines the power of"
                    "artificial intelligence with the accessibility of modern technology to  "
                    "offer a seamless and educational experience. Whether you're a curious  "
                    "student delving into the realm of human anatomy or a healthcare  "
                    "professional looking to enhance your knowledge, Scanatomy "
                    "serves as your digital guide through the complexities of the  "
                    "human body."
                    "\n"
                    "\n"
                    "With Scanatomy, users can expect not only accurate identification of "
                    "the scanned body part but also a wealth of contextual information, "
                    "including detailed descriptions, functions, and connections to other"
                    "anatomical structures. This multifaceted approach not only aids in"
                    "immediate recognition but also fosters a deeper understanding of the "
                    "human body's intricate design.",
                    style: TextStyle(fontSize: 28, fontFamily: 'Poppins', color: Colors.black), 
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
