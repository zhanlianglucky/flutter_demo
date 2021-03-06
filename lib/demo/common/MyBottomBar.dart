import 'package:flutter/material.dart';

class MyBottomBarContainer {
  static List<String> tabInfoList = [
    "看图识数",
    "分类",
    "计算",
    "消息",
    "我的",
  ];

  ///调用函数
  getBottomNavigationBar(int currentIndex,DataColumnSortCallback callback) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          title: Text(tabInfoList[0]),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text(tabInfoList[1]),
          icon: Icon(Icons.menu),
        ),
        BottomNavigationBarItem(
          title: Text(tabInfoList[2]),
          icon: Icon(Icons.view_comfy),
        ),
        BottomNavigationBarItem(
          title: Text(tabInfoList[3]),
          icon: Icon(Icons.message),
        ),
        BottomNavigationBarItem(
          title: Text(tabInfoList[4]),
          icon: Icon(Icons.person),
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.lightBlueAccent,
      showUnselectedLabels: true,
      onTap: (i){
        callback(i,false);
      },
    );
  }

}