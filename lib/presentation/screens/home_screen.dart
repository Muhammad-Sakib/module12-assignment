import 'package:flutter/material.dart';
import 'package:module12_assignment/presentation/utils/screen_utils.dart';
import 'package:module12_assignment/presentation/widgets/responsive_builder.dart';

import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: Scaffold(
          appBar: AppBar(
            title: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text(
                  "Humming\nBird.".toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
          ),
          drawer: Drawer(
            shape: LinearBorder(),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  color: ScreenUtils.themeColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Skill up now".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        "Tap here".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 60, 40, 0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.movie_outlined),
                        title: Text(
                          "Episodes",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Icon(Icons.info),
                        title: Text(
                          "About",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ScreenUtils.HeaderText.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 50),
                        textAlign: TextAlign.center,
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
        ),
        tablet: Scaffold(
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
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 50),
                        textAlign: TextAlign.center,
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
        ),
        desktop: Scaffold(
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
        ));
  }
}
