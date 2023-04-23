import 'package:flutter/material.dart';
import 'package:yuhuaren_app/shared/color.dart';

class ActivityTypeFilter extends StatefulWidget {
  final List<String> filters;

  const ActivityTypeFilter({Key? key, required this.filters}) : super(key: key);

  @override
  State<ActivityTypeFilter> createState() => _ActivityTypeFilterState();
}

class _ActivityTypeFilterState extends State<ActivityTypeFilter> {
  String selected = 'All';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // constraints: BoxConstraints(minHeight: 40),
          decoration: BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: options(),
          ),
        ),
      ],
    );
  }

  List<Widget> options() {
    List<String> allOptions = ['All', ...widget.filters];
    return allOptions
        .map<Widget>((option) =>
            selected == option ? _activeButton(option) : _button(option))
        .toList();
  }

  Widget _button(String text) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(100, 50),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      onPressed: () {
        setState(() {
          selected = text;
        });
      },
      child: Text(text),
    );
  }

  Widget _activeButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(100, 50),
        backgroundColor: primary,
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      onPressed: () {
        setState(() {
          selected = text;
        });
      },
      child: Text(text),
    );
  }
}
