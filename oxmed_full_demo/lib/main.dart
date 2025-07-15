
import 'package:flutter/material.dart';

void main() => runApp(OxMedApp());

class OxMedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OxMed Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFF1A237E),
      ),
      home: RoleNavigation(),
    );
  }
}

class RoleNavigation extends StatefulWidget {
  @override
  _RoleNavigationState createState() => _RoleNavigationState();
}

class _RoleNavigationState extends State<RoleNavigation> {
  int _selectedIndex = 0;

  static const List<String> _titles = [
    'Patient',
    'Paramedic',
    'Responder',
    'Command',
    'Researcher'
  ];

  static const List<Color> _colors = [
    Color(0xFF2CFF05), // Patient luminous
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.deepOrangeAccent,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        backgroundColor: _colors[_selectedIndex],
      ),
      body: Center(
        child: Text(
          '${_titles[_selectedIndex]} Screen UI Goes Here',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        backgroundColor: _colors[_selectedIndex],
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'Patient'),
          BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: 'Paramedic'),
          BottomNavigationBarItem(icon: Icon(Icons.volunteer_activism), label: 'Responder'),
          BottomNavigationBarItem(icon: Icon(Icons.control_camera), label: 'Command'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Researcher'),
        ],
      ),
    );
  }
}
