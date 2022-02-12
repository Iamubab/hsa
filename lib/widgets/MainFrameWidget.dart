import 'package:flutter/material.dart';

class MainFrame extends StatefulWidget {
  @override
  _MainFrameState createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Grid Demo'),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,  
        mainAxisSpacing: 8.0,  
        children: List.generate(functions.length, (index) {  
                  return Center(  
                    child: SelectCard(function: functions[index]),  
                  );  
                }  
                )  
            )  
        )  
    );  
  }  
}  

class Function {  
  const Function({this.title, this.icon});  
  final String title;  
  final IconData icon;  
}  
  
const List<Function> functions = const <Function>[  
  const Function(title: 'Home', icon: Icons.home),  
  const Function(title: 'Contact', icon: Icons.contacts),  
  const Function(title: 'Map', icon: Icons.map),  
  const Function(title: 'Phone', icon: Icons.phone),    
];  