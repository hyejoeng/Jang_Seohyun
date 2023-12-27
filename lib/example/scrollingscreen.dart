import 'package:flutter/material.dart';
import 'package:jang_seohyun/context_utils.dart';
import 'package:jang_seohyun/images_data.dart';

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                actions: [
                  const Icon(Icons.arrow_back_ios, color: Colors.black),
                  Image.asset('asset/images/logo-light.png'),
                  // Expanded(child: SizedBox()),
                  Text(
                    '장서현',
                    style: textTheme(context).titleMedium,
                  )
                ],
                floating: true,
                snap: false,
                pinned: true,
                expandedHeight: screensize(context).height * 0.1,
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _CustomHeader(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: ImagesDataList.length,
                      itemBuilder: (context, index) =>
                          _ImagesDataListWidget(context, index)),
                  childCount: 1,
                ),
              ),
            ],
          ),
        ),
      );
}

class _CustomHeader extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 50;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final radius = 25.0 + shrinkOffset;

    return Container(
      decoration: BoxDecoration(
        border: const BorderDirectional(
            top: BorderSide(width: 1, color: Colors.black),
            start: BorderSide(width: 1, color: Colors.black),
            end: BorderSide(width: 1, color: Colors.black)),
        color: Colors.white,
        // borderRadius: BorderRadius.circular(radius),
        borderRadius: BorderRadius.vertical(top: Radius.circular(radius)),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '날짜별 관찰 일지',
          style: textTheme(context).titleMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

Widget _ImagesDataListWidget(BuildContext context, int index) =>
    SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  ImagesDataList[index].imagesUrl,
                  width: screensize(context).width * 0.25,
                  fit: BoxFit.cover,
                ),
                Text(
                  ImagesDataList[index].dateData,
                  style: textTheme(context).titleSmall,
                )
              ],
            ),
          ),
        ],
      ),
    );
