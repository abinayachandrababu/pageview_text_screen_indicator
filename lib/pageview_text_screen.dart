import 'package:flutter/material.dart';
import 'package:flutter_pageview_text_screen_indicator/app_data_text.dart';
import 'package:flutter_pageview_text_screen_indicator/display_text.dart';

class PageViewTextScreen extends StatefulWidget {
  const PageViewTextScreen({super.key});

  @override
  State<PageViewTextScreen> createState() => _PageViewTextScreenState();
}

class _PageViewTextScreenState extends State<PageViewTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratan Tata',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 250,
              child:PageView.builder(
                itemCount: appDataTextList.length,
                itemBuilder: (context, index){
                  return DisplayText(appDataText: appDataTextList[index]);
                },
              )
          )
        ],
      ),
    );
  }
}


