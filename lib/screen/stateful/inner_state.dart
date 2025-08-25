import 'package:flutter/material.dart';

class InnerState extends StatefulWidget {
  const InnerState({required this.count, super.key});

  final int count;

  @override
  State<InnerState> createState() => _InnerStateState();
}

class _InnerStateState extends State<InnerState> {
  int innerCount = 0;

  @override
  void initState() {
    super.initState();
    innerCount = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.count.toString()),
        ElevatedButton(
          onPressed: () {
            innerCount++;
            setState(() {});
          },
          child: Text('inner count up'),
        ),
      ],
    );
  }
}
