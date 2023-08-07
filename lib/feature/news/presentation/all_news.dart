import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/feature/news/presentation/News_page.dart';

class AllNews extends StatelessWidget {
  const AllNews({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title: const Text('All News'),) ,
          body: const Column(children: [
            TabBar(
              indicatorColor: Colors.black87,
                labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                labelColor: CupertinoColors.activeBlue,
                isScrollable: false,

                tabs: [
              Tab(text: 'Top News',),
              Tab(text: 'Entertainment',),
              Tab(text: 'Sports',),

            ]),
            Expanded(
              child: TabBarView(children: [
                NewsPage(),


                Center(child: Text('Entertainment News'),),
                Center(child: Text('Sport News'),),


              ]),
            ),
          ],),
        )
    
    );
  }
}
