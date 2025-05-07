import 'package:doc_truyen/pages/favorite_page.dart';
import 'package:doc_truyen/pages/history_page.dart';
import 'package:doc_truyen/pages/home_page.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final List _pages = [HomePage(), FavoritePage(), HistoryPage()];

  final List<String> _titles = ['Homepage', 'Favorite', 'History'];

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

      body: Row(
        children: [
          // Drawer sẽ luôn hiển thị như sidebar
          Container(
            width: 250,
            child: Drawer(
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
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration:
                        _selectedIndex == 0
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
                              _selectedIndex == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              _selectedIndex == 0
                                  ? Colors.indigo
                                  : Colors.black87,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                    ),
                  ),

                  // Favorite
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration:
                        _selectedIndex == 1
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
                              _selectedIndex == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              _selectedIndex == 1
                                  ? Colors.indigo
                                  : Colors.black87,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                  ),

                  // History
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration:
                        _selectedIndex == 2
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
                              _selectedIndex == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                          color:
                              _selectedIndex == 2
                                  ? Colors.indigo
                                  : Colors.black87,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}
