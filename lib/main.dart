import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> _notlar = [
    "İlk Notum",
    "Markete Gidilecek",
    "Flutter konuları tekrar edilecek",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 36,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Search your notes",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.menu,
                      size: 36,
                    ),
                    SizedBox(width: 16),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "https://picsum.photos/250?image=9",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: _notlar.length,
                  itemBuilder: _buildItem,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            _notlar[index],
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
