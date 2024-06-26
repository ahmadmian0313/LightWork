import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Widget1 extends StatefulWidget {
  Widget1({super.key, required this.Listitem, required this.index, required this.color, required this.iconcolor, required this.textColor});
  final Listitem;
  final int index;
  final Color color;
   final Color iconcolor;
   final Color textColor;

  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90 ,
      width: 95,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 1, offset: Offset(0, 0)),
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            SvgPicture.asset(widget.Listitem["icon"],color:widget.iconcolor),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              widget.Listitem["title"],
              style: TextStyle(fontWeight: FontWeight.bold,color:widget.textColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(widget.Listitem["subtitle"],style: TextStyle(color: widget.textColor),),
          ),
        ],

      ),
    );
  }
}