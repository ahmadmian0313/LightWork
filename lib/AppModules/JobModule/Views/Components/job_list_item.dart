import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class JobListItem extends StatefulWidget {
  const JobListItem(
      {super.key,
      required this.joblist,
      required this.color,
        required this.iconcolor,
        required this.textcolor, required this.index});

  final joblist;
  final Color color;
  final Color iconcolor;
  final Color textcolor;
  final int index;

  @override
  State<JobListItem> createState() => _JobListItemState();
}

class _JobListItemState extends State<JobListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: widget.color),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child: SvgPicture.asset(
              widget.joblist["icon"],color: widget.iconcolor
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
            child: Text(
              widget.joblist["title"],style: TextStyle(color:widget.textcolor),
            ),
          ),
        ],
      ),
    );
  }
}
