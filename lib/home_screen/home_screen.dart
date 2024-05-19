import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Welcome, Mangcoding',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Schedule',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('January 2024', style: TextStyle(fontSize: 18)),
                      Icon(Icons.calendar_today),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      7,
                          (index) => Column(
                        children: [
                          Text(
                            ['M', 'T', 'W', 'T', 'F', 'S', 'S'][index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            (index + 15).toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'All',
              style: TextStyle(fontSize: 18),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text(
                'Development of software for the protection of information resources',
              ),
              subtitle: Text('10:00 AM - 01:00 PM'),
              trailing: Text('Urgent', style: TextStyle(color: Colors.red)),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text(
                'Development of software for the protection of information resources',
              ),
              subtitle: Text('10:00 AM - 01:00 PM'),
              trailing: Text('Urgent', style: TextStyle(color: Colors.red)),
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Schedule'),
        ],
      ),
    );
  }
}
