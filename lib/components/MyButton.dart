import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;

  const MyButton({super.key, required this.onTap, required String text});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    onTap: onTap;
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.circular(6)),
       
      child:  Center(
        child: Text('Sign In',
        style: TextStyle(color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}