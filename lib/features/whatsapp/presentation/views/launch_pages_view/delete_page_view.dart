import 'package:flutter/material.dart';

class DeletePageView extends StatelessWidget {
  const DeletePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Deleted Page Content",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}