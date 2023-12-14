import 'package:flutter/material.dart';
import 'package:jang_seohyun/context_utils.dart';

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                Image.asset('asset/images/logo-light.png'),
                // Expanded(child: SizedBox()),
                Text('장서현의 관찰 일기', style: textTheme(context).titleMedium,)
              ],
              floating: true,
              snap: false,
              expandedHeight: screensize(context).height * 0.1,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _CustomHeader(),
            ),
            // SliverList(delegate: SliverChildBuilderDelegate(
            //   (context, index) => const Text('네모'),
            // ))
          ],
        ),
      );
}

class _CustomHeader extends SliverPersistentHeaderDelegate {
  @override
  // TODO: implement maxExtent
  double get maxExtent => 100;

  @override
  // TODO: implement minExtent
  double get minExtent => 100;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    // throw UnimplementedError();
    final radius = 20.0 - shrinkOffset / 100;
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Text(
          '네모',
              textAlign: TextAlign.center,
        ),
      ),
    );
  }

  // covariant 공변
  //
  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    // throw UnimplementedError();
    return false;
  }
}

Widget _ImagesData() => Container(
  decoration: BoxDecoration(
    color: Colors.yellow,
    borderRadius: BorderRadius.circular(50),

  ),
);