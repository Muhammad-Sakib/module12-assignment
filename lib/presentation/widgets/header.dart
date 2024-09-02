import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Text(
                "Humming\nBird.".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
              )),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Episodes",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
