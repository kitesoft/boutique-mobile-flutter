import 'package:flutter/material.dart';

List<_FilterItemTile> _kCategoryTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'CATEGORY 1',
  ),
  new _FilterItemTile(
    'CATEGORY 2',
  ),
  new _FilterItemTile(
    'CATEGORY 3',
  ),
  new _FilterItemTile(
    'CATEGORY 4',
  ),
  new _FilterItemTile(
    'CATEGORY 5',
  ),
];

List<_FilterItemTile> _kColorTiles = <_FilterItemTile>[
  new _FilterItemTile(
    'assets/images/color_black.png',
  ),
  new _FilterItemTile(
    'assets/images/color_white.png',
  ),
  new _FilterItemTile(
    'assets/images/color_red.png',
  ),
  new _FilterItemTile(
    'assets/images/color_green.png',
  ),
  new _FilterItemTile(
    'assets/images/color_blue.png',
  ),
];

class FilterPage extends StatefulWidget {
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(18.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: new Container(
                      width: 40.0,
                      height: 40.0,
                      alignment: Alignment.topLeft,
                      margin: new EdgeInsets.only(top: 20.0),
                      child: new Image.asset(
                        "assets/images/close.png",
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.centerRight,
                    margin: new EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: new Text(
                      'APPLY FILTER',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: const Color(0xFF33b17c),
                        fontSize: 18.0,
                        fontFamily: 'avenir_black',
                        letterSpacing: 0.91,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              height: 2.0,
              decoration: new BoxDecoration(
                color: const Color(0xFF979797),
              ),
            ),
            new Expanded(
              child: new ListView(
                children: <Widget>[
                  new ExpansionTile(
                    title: new Container(
                      padding: new EdgeInsets.only(
                          left: 4.0, right: 8.0, top: 24.0, bottom: 24.0),
                      child: new Text(
                        'Category',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          // color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'helvetica_neue_medium',
                          letterSpacing: 0.69,
                        ),
                      ),
                    ),
                    children: <Widget>[
                      new GridView.count(
                        shrinkWrap: true,
                        primary: false,
                        childAspectRatio: 2.0,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.0,
                        children: _kCategoryTiles.map((_FilterItemTile item) {
                          return new GridTile(
                            child: new Container(
                              margin: new EdgeInsets.all(10.0),
                              child: new Text(
                                item.itemName,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'helvetica_neue_medium',
                                  letterSpacing: 0.59,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),

                  // Brand list

                  new ExpansionTile(
                    title: new Container(
                      padding: new EdgeInsets.only(
                          left: 4.0, right: 8.0, top: 24.0, bottom: 24.0),
                      child: new Text(
                        'Brand',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          // color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'helvetica_neue_medium',
                          letterSpacing: 0.69,
                        ),
                      ),
                    ),
                    children: <Widget>[
                      new GridView.count(
                        shrinkWrap: true,
                        primary: false,
                        childAspectRatio: 2.0,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.0,
                        children: _kCategoryTiles.map((_FilterItemTile item) {
                          return new GridTile(
                            child: new Container(
                              margin: new EdgeInsets.all(10.0),
                              child: new Text(
                                item.itemName,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'helvetica_neue_medium',
                                  letterSpacing: 0.59,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      )
                    ],
                  ),

                  new ExpansionTile(
                    title: new Container(
                      padding: new EdgeInsets.only(
                          left: 4.0, right: 8.0, top: 24.0, bottom: 24.0),
                      child: new Text(
                        'Color',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'helvetica_neue_medium',
                          letterSpacing: 0.69,
                        ),
                      ),
                    ),
                    children: <Widget>[
                      new GridView.count(
                        shrinkWrap: true,
                        primary: true,
                        childAspectRatio: 2.0,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.0,
                        children: _kColorTiles.map((_FilterItemTile item) {
                          return new GridTile(
                            child: new Container(
                              margin: new EdgeInsets.all(14.0),
                              child: new Image.asset(
                                item.itemName,
                              ),
                            ),
                          );
                        }).toList(),
                      )
                    ],
                  ),

                  new ExpansionTile(
                    title: new Container(
                      padding: new EdgeInsets.only(
                          left: 4.0, right: 8.0, top: 24.0, bottom: 24.0),
                      child: new Text(
                        'Size',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          // color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'helvetica_neue_medium',
                          letterSpacing: 0.69,
                        ),
                      ),
                    ),
                    children: <Widget>[
                      new GridView.count(
                        shrinkWrap: true,
                        primary: false,
                        childAspectRatio: 2.0,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.0,
                        children: _kCategoryTiles.map((_FilterItemTile item) {
                          return new GridTile(
                            child: new Container(
                              margin: new EdgeInsets.all(10.0),
                              child: new Text(
                                item.itemName,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontFamily: 'helvetica_neue_medium',
                                  letterSpacing: 0.59,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterItemTile {
  final String itemName;

  _FilterItemTile(this.itemName);
}
