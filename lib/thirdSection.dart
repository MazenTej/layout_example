import 'package:flutter/material.dart';

class thirdSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context, Colors.red, Icons.phone, 'CALL', '/call'),
        _buildButtonColumn(
            context, Colors.blue, Icons.email, 'ROUTE', '/route'),
        _buildButtonColumn(
            context, Colors.black, Icons.phone, 'SHARE', '/share')
      ],
    );
  }
}

Column _buildButtonColumn(
    context, Color color, IconData icon, String label, String routeName) {
  return Column(
    children: [
      IconButton(
        icon: Icon(icon),
        color: color,
        onPressed: () => Navigator.of(context).pushNamed('$routeName'),
      ),
      Container(
        padding: EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, color: color, fontWeight: FontWeight.w400),
        ),
      ),
    ],
  );
}
