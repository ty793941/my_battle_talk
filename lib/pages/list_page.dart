import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_battle_talk/components/common/my_clip_image_widget.dart';
import 'package:my_battle_talk/components/my_bottom_navigation_bar_widget.dart';
import 'package:my_battle_talk/models/common_enum.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 240, 240, 240),
          elevation: 0,
          title: const Text(
            '某信',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
          actions: [
            // IconButton(
            //   icon: const Icon(Icons.add_circle_outline_outlined,
            //       color: Color(0xFF101010)),
            //   onPressed: () {},
            // ),
            TextButton(
                onPressed: () {},
                child: SvgPicture.asset("assets/svgs/add.svg",
                    width: 24, height: 24, semanticsLabel: 'add'))
          ],
        ),
        body: ListView(
          children: [
            Container(
                height: 55,
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 240, 240, 240),
                child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // 圆角半径
                        borderSide: BorderSide.none, // 去掉边框线
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // 圆角半径
                        borderSide: const BorderSide(
                          color: Colors.transparent, // 设置未聚焦时的边框颜色
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0), // 圆角半径
                        borderSide: const BorderSide(
                          color: Colors.transparent, // 设置聚焦时的边框颜色
                        ),
                      ),
                      // hintText: '搜索',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Icon(Icons.search, color: Colors.grey),
                          const SizedBox(width: 10),
                          Text(
                            "搜索",
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 18),
                          ),
                        ],
                      ),
                      // prefixIcon: const Icon(
                      //   Icons.search,
                      //   color: Colors.grey,
                      // ),
                    ))

                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                // ),
                ),
            const Divider(height: 1, thickness: 1, color: Color(0xFFD7D7D7)),

            // 聊天列表
            _buildChatItem(
              avatar: 'assets/images/avatr_6.jpg',
              name: '大猪蹄子',
              message: '[图片]',
              time: '下午 1:51',
            ),
            _buildChatItem(
              avatar: 'assets/images/avatr_2.jpg',
              name: '闺蜜1',
              message: '陈晓婷: 我朋友上次 5.60 个人还没成功',
              time: '10月11日',
            ),
            _buildChatItem(
              avatar: 'assets/images/avatr_3.jpg',
              name: '闺蜜-欧美',
              message: '[7条] 北上广深均已取消普通住房和非普通住房…',
              time: '下午 2:36',
            ),
            _buildChatItem(
              avatar: 'assets/images/avatr_4.jpg',
              name: '研究社读者 8群',
              message: '"高翔胡七筒"与群里其他人都不是朋友关…',
              time: '下午 2:24',
            ),
            _buildChatItem(
              avatar: 'assets/images/avatr_5.jpg',
              name: '广发信用卡',
              message: '[服务通知] 还款提醒',
              time: '下午 2:17',
            ),
            _buildChatItem(
              avatar: 'assets/images/avatr_7.jpg',
              name: '文件传输助手',
              message: '[文件] 用户中心.pdf',
              time: '下午 1:55',
            ),
            _buildChatItem(
              avatar: 'assets/images/avatr_8.jpg',
              name: '盛派网络小助手',
              message: '.NET Conf China 2024 大会个人和社区…',
              time: '下午 1:55',
            ),
          ],
        ),
        bottomNavigationBar:
            const MyBottomNavigationBarWidget(currentItem: BottomNavItem.home));
  }

  Widget _buildChatItem({
    required String avatar,
    required String name,
    required String message,
    required String time,
  }) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            height: 78,
            child: Row(
              children: [
                MyClipImageWidget(
                  imageUrl: avatar,
                  width: 50,
                  height: 50,
                  radius: 5,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: SizedBox(
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                time,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            message,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )),
                ),
              ],
            )),
        const Divider(
            height: 1, indent: 72, thickness: 0.3, color: Color(0xFFD7D7D7)),
      ],
    );
  }
}
