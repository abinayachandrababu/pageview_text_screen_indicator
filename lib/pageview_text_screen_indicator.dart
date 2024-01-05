import 'package:flutter/material.dart';
import 'package:flutter_pageview_text_screen_indicator/app_data_text.dart';
import 'package:flutter_pageview_text_screen_indicator/display_text.dart';

class PageViewTextScreenIndicator extends StatefulWidget {
  const PageViewTextScreenIndicator({super.key});

  @override
  State<PageViewTextScreenIndicator> createState() =>
      _PageViewTextScreenIndicatorState();
}

class _PageViewTextScreenIndicatorState
    extends State<PageViewTextScreenIndicator> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albert Einstein'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  print('------------> Current Index: $index');
                  _selectedIndex = index;
                });
              },
              itemCount: appDataTextList.length,
              itemBuilder: (context, index) {
                return DisplayText(
                  appDataText: appDataTextList[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: new Text(
                  // 1/6
                  (_selectedIndex + 1).toString() +
                      '/' +
                      appDataTextList.length.toString(),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}