import 'package:app/src/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../router/router.dart';

class ChooseClubButton extends StatefulWidget {
  const ChooseClubButton({Key? key}) : super(key: key);

  @override
  State<ChooseClubButton> createState() => _ChooseClubButtonState();
}

class _ChooseClubButtonState extends State<ChooseClubButton> {
  void _onBtnPressed(ctx) {
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onBtnPressed(context),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.redAccent.shade700,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 5, 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Клуб №1: "Disnay Land"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
                child: Image.asset(
                  'icons/stagged_icon.png',
                  height: 15,
                  width: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
