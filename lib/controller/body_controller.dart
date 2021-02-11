import 'package:flutter/material.dart';

class BodyController extends StatelessWidget {
  const BodyController({
    Key key,
    @required this.halfOfScreen,
    @required this.tags,
  }) : super(key: key);

  final double halfOfScreen;
  final List<Chip> tags;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SpaceWidget(),
        Center(
          child: CircleAvatar(
            child: Icon(
              Icons.person,
              size: 100,
            ),
            radius: halfOfScreen,
          ),
        ),
        SpaceWidget(),
        Text(
          'John Smith',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SpaceWidget(),
        Text(
          'John Smith is a good gunner who stopped at Jericho while he '
          'was travelling from Chicago to Mexico.',
          style: TextStyle(
            fontSize: 25.0,
          ),
          textAlign: TextAlign.center,
        ),
        SpaceWidget(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: tags,
          ),
        ),
      ],
    );
  }
}

Iterable<Chip> profiles(List<String> tags) sync* {
  for (var tag in tags) {
    yield Chip(label: Text(tag));
  }
}

class SpaceWidget extends StatelessWidget {
  const SpaceWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
    );
  }
}
