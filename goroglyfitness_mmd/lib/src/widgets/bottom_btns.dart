import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBtn extends StatelessWidget {
  final Image btnIcon;
  final String btnText;
  final String newLocation;

  const BottomBtn({
    super.key,
    required this.btnIcon,
    required this.btnText,
    required this.newLocation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          onPressed: () => context.go(newLocation),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.redAccent.shade700),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(width: 20, child: btnIcon),
                const SizedBox(width: 8),
                Expanded(
                  flex: 2,
                    child: Center(
                  child: Text(btnText),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
