import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'list_view_page.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List<Widget> _pages = [const ListViewPage(), const SearchPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _index, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'resources/schedule.svg',
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'resources/schedule.svg',
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),
            label: 'Расписание',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Оценки'),
        ],
      ),
    );
  }
}
