import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_douban/views/tabs/book_movie/movie/movie.dart';
import 'package:flutter_douban/utils/screenAdapter/screen_adapter.dart';
class BookMoviePage extends StatefulWidget {
  @override
  _BookMoviePageState createState() => _BookMoviePageState();
}

class _BookMoviePageState extends State<BookMoviePage> with SingleTickerProviderStateMixin{
  

  // tabcontroller
  TabController _tabController;
  // 
  List<String> _tabsList = [ '电影','电视','读书','原创小说','音乐','同城'];


  @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: _tabsList.length,vsync: this);
    if (Platform.isAndroid) {
     // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        bottom: TabBar(
          labelColor:Colors.black,
          labelStyle: TextStyle(fontSize: 16),
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.black45,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          tabs:_tabsList.map((item){
            return Tab(text: item);
          }).toList(),
        ),
        title: _appBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MoviePage(),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }
// appbar
  Widget _appBar(){
    return Row(
      children: <Widget>[
        Container(
            width: ScreenAdapter.getScreenWidth() - ScreenAdapter.width(160),
            height: ScreenAdapter.height(70),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(vertical: ScreenAdapter.height(12)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                ),
                suffixIcon: Icon(Icons.center_focus_weak,color: Colors.black38),
                prefixIcon: Icon(Icons.search,color: Colors.black38),
                fillColor: Colors.grey[100],
                filled: true,
              ),
            ),
        ),
        Expanded(
          flex:1,
          child: IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.mail_outline,color: Colors.grey),
          ),
        )
      ],
    );
  }
}