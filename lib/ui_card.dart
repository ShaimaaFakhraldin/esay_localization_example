import 'package:flutter/material.dart';

class UiCard extends StatelessWidget {
  final String image;
  final String name;

  final String description;

  final String auther;

  final String created;

  const UiCard(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.auther,
      required this.created});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(width: 5,),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  auther,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  created,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
