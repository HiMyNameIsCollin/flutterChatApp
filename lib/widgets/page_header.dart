import 'package:flutter/material.dart';
import '../text_styles.dart';

class PageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 32,
        bottom: 16,
        right: 16,
        left: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    'https://robohash.org/1.png',
                  ),
                  // Implement user initials here
                  // child: Text('CS'),
                  foregroundColor: Colors.white,
                  radius: 30,
                ),
              ),
              SizedBox(width: 16),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'Hey Collin',
                      style: bigWhiteText,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Welcome back',
                      style: subWhiteText,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: ElevatedButton(
              onPressed: () => print('123'),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 24,
                ),
                onPressed: () => print(123),
              ),
            ),
          )
        ],
      ),
    );
  }
}
