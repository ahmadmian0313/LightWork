import 'package:flutter/material.dart';

class AccountListIltem extends StatelessWidget {
  const AccountListIltem({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 18.0,),
        child: Row(children: [
          Icon(icon),
          SizedBox(width: 12,),
          Text(title,
            style: TextStyle(
                fontSize: 18,
                    color:Colors.black87,
            ),),


        ]),
      ),
    );
  }
}