import 'package:flutter/material.dart';

class secondSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschien Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kanderstag, switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          favorites(),
        ],
      ),
    );
  }
}

class favorites extends StatefulWidget {
  @override
  _favoritesState createState() => _favoritesState();
}

class _favoritesState extends State<favorites> {
  bool _isFav = true;
  int _favCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFav) {
        _isFav = false;
        _favCount -= 1;
      } else {
        _isFav = true;
        _favCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: _toggleFavorite,
            icon: (_isFav ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red,
          ),
        ),
        Text('$_favCount')
      ],
    );
  }
}
