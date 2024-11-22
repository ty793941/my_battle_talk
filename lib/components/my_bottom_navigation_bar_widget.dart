import 'package:flutter/material.dart';

import '../models/common_enum.dart';

class MyBottomNavigationBarWidget extends StatefulWidget {
  final BottomNavItem currentItem;

  const MyBottomNavigationBarWidget({
    super.key,
    required this.currentItem,
  });

  @override
  State<MyBottomNavigationBarWidget> createState() =>
      _MyBottomNavigationBarWidgetState();
}

class _MyBottomNavigationBarWidgetState
    extends State<MyBottomNavigationBarWidget> {
  late BottomNavItem _currentItem = BottomNavItem.home;
  @override
  void initState() {
    super.initState();
    _currentItem = widget.currentItem; // 初始化时设置当前索引
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: const Color.fromARGB(255, 240, 240, 240),
        padding: const EdgeInsets.all(0),
        height: 87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTabItem(
                icon: "assets/images/tabbar_mainframe.png",
                activeIcon: "assets/images/tabbar_mainframeHL.png",
                label: "某信",
                item: BottomNavItem.home,
                currentItem: _currentItem,
                onPressed: _onTap),
            _buildTabItem(
                icon: "assets/images/tabbar_contacts.png",
                activeIcon: "assets/images/tabbar_contactsHL.png",
                label: "通讯录",
                item: BottomNavItem.contact,
                currentItem: _currentItem,
                onPressed: _onTap),
            _buildTabItem(
                icon: "assets/images/tabbar_discover.png",
                activeIcon: "assets/images/tabbar_discoverHL.png",
                label: "发现",
                item: BottomNavItem.discover,
                currentItem: _currentItem,
                onPressed: _onTap),
            _buildTabItem(
                icon: "assets/images/tabbar_me.png",
                activeIcon: "assets/images/tabbar_meHL.png",
                item: BottomNavItem.mine,
                label: "我",
                currentItem: _currentItem,
                onPressed: _onTap),
          ],
        ));
  }

  void _onTap(BottomNavItem item) {
    // if (item == BottomNavItem.home && _currentItem != item) {
    //   Navigator.replace(context,
    //       oldRoute: ModalRoute.of(context)!,
    //       newRoute: MyRoute.getHomePageRoute());
    // } else if (item == BottomNavItem.project && _currentItem != item) {
    //   Navigator.replace(context,
    //       oldRoute: ModalRoute.of(context)!,
    //       newRoute: MyRoute.getProjectPageRoute());
    // } else if (item == BottomNavItem.mine && _currentItem != item) {
    //   Navigator.replace(context,
    //       oldRoute: ModalRoute.of(context)!,
    //       newRoute: MyRoute.getMinePageRoute());
    // }
    setState(() {
      _currentItem = item;
    });
  }

  Widget _buildTabItem(
      {required String icon,
      String? activeIcon,
      required String label,
      required BottomNavItem item,
      required BottomNavItem currentItem,
      Function(BottomNavItem item)? onPressed}) {
    return TextButton(
        onPressed: () {
          _onTap(item);
        },
        style: TextButton.styleFrom(
          foregroundColor: item == currentItem
              ? const Color(0xFF1AB84E)
              : const Color(0xFF101010), // 文本和图标颜色
          padding: const EdgeInsets.symmetric(vertical: 8), // 内边距
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // item == currentItem && activeIcon != null ? activeIcon : icon, // 图标
            Image.asset(
              item == currentItem && activeIcon != null ? activeIcon : icon,
              width: 25,
              height: 25,
            ),
            const SizedBox(height: 2), // 图标和文字之间的间距
            Text(label, style: const TextStyle(fontSize: 12)), // 文本
          ],
        ));
  }
}
