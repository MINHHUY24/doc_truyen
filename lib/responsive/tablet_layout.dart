import 'package:doc_truyen/pages/favorite_page.dart';
import 'package:doc_truyen/pages/history_page.dart';
import 'package:doc_truyen/pages/home_page.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  final List _pages = [HomePage() , FavoritePage(), HistoryPage()];

  final List<String> _titles = ['Homepage' , 'Favorite',  'History'];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Image.network(
                  'https://avatar.iran.liara.run/public/12',
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            // Homepage
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: _selectedIndex == 0
                  ? BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              )
                  : null,
              child: ListTile(
                title: Text(
                  'Homepage',
                  style: TextStyle(
                    fontWeight:
                    _selectedIndex == 0 ? FontWeight.bold : FontWeight.normal,
                    color: _selectedIndex == 0 ? Colors.indigo : null,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                    Navigator.pop(context);
                  });
                },
              ),
            ),

            // Favorite
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: _selectedIndex == 1
                  ? BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              )
                  : null,
              child: ListTile(
                title: Text(
                  'Favorite',
                  style: TextStyle(
                    fontWeight:
                    _selectedIndex == 1 ? FontWeight.bold : FontWeight.normal,
                    color: _selectedIndex == 1 ? Colors.indigo : null,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                    Navigator.pop(context);
                  });
                },
              ),
            ),

            // History
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: _selectedIndex == 2
                  ? BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.2),
                    blurRadius: 6,
                    offset: const Offset(0, 4),
                  ),
                ],
              )
                  : null,
              child: ListTile(
                title: Text(
                  'History',
                  style: TextStyle(
                    fontWeight:
                    _selectedIndex == 2 ? FontWeight.bold : FontWeight.normal,
                    color: _selectedIndex == 2 ? Colors.indigo : null,
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                    Navigator.pop(context);
                  });
                },
              ),
            ),
          ],
        ),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
