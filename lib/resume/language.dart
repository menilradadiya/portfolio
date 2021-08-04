import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:portfolio/widgets/sticky_header.dart';

import '../widget_barrel.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader.builder(
      overlapsContent: true,
      sticky: true,
      builder: (context, state) => StickyHeader(
        headerName: 'Language',
        isPinned: state.isPinned,
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: MediaQuery.of(context).size.width > 768,
                  child: Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.0,
                        ),
                        Text('Language',
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w800)),
                        SizedBox(
                          height: 24.0,
                        ),
                        MediaQuery.of(context).size.width > 768
                            ? Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SkillsProgressBar(
                                          skill: kLanguage[0],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 24.0,
                                      ),
                                      Expanded(
                                        child: SkillsProgressBar(
                                          skill: kLanguage[1],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 48.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: SkillsProgressBar(
                                          skill: kLanguage[2],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 24.0,
                                      ),
                                      Expanded(
                                        child: Container()
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  SkillsProgressBar(
                                    skill: kLanguage[0],
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  SkillsProgressBar(
                                    skill: kLanguage[1],
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  SkillsProgressBar(
                                    skill: kLanguage[2],
                                  ),
                                ],
                              ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
