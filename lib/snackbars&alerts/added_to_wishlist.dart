import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';

void showBottomDialog(BuildContext context, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            elevation: 5, // Adjust elevation as needed
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Adjust border radius
            ),
            child: Container(
              width: double.infinity,
              color: Colors.white, // Adjust background color as needed
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      content,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
