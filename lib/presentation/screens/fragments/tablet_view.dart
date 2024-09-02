import 'package:flutter/material.dart';
import 'package:module12_assignment/presentation/utils/screen_utils.dart';
import 'package:module12_assignment/presentation/widgets/header.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
          child: Column(
            children: [
              Header(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ScreenUtils.HeaderText.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    ScreenUtils.ParagraphText,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    maxLines: 6,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: ScreenUtils.themeColor,
                        ),
                        width: 200,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Join course",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
