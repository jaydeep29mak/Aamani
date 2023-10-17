import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.network("https://picsum.photos/seed/picsum/200/300",
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
            return Center(
              child: Text('Failed to load image'),
            );
          }, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
