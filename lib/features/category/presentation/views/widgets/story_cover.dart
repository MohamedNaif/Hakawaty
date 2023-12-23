import 'package:flutter/material.dart';

class StoryCover extends StatelessWidget {
  const StoryCover({
    super.key,
    required this.storyCover,
  });

  final String storyCover;
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        showDialogBox(context) ;
      },
      child: SizedBox(
        height: screenH * 0.3,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(storyCover),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void showDialogBox(BuildContext context){
    showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Confirmation'),
            content: const Text('Do you want to '),
            actionsAlignment: MainAxisAlignment.spaceBetween,
            actionsOverflowAlignment: OverflowBarAlignment.start,
            actions: <Widget>[
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStatePropertyAll(Colors.grey.withOpacity(0.6)),
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                ),
                onPressed: () {
                  // Perform action when "OK" is pressed
                  Navigator.of(context).pop(); // Close the dialog
                  // Add your custom logic here
                },
                child: const Text('reading'),
              ),
              TextButton(
                onPressed: () {
                  // Perform action when "Cancel" is pressed
                  Navigator.of(context).pop(); // Close the dialog
                  // Add your custom logic here
                },
                child: const Text('listening'),
              ),
              TextButton(
                onPressed: () {
                  // Perform action when "Cancel" is pressed
                  Navigator.of(context).pop(); // Close the dialog
                  // Add your custom logic here
                },
                child: const Text('cancel'),
              ),
            ],
          ),
        );
  }
}
