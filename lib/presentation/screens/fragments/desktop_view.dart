import 'package:flutter/material.dart';
import 'package:module12_assignment/presentation/widgets/header.dart';

import '../../utils/screen_utils.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
          child: Column(
            children: [
              Header(),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ScreenUtils.HeaderText.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 50),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            ScreenUtils.ParagraphText,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24),
                            maxLines: 6,
                            overflow: TextOverflow.visible,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
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
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
