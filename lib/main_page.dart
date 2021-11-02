import 'package:flutter/material.dart';
import 'package:webapp/widgets/body.dart';
import 'package:webapp/widgets/category_button.dart';
import 'package:webapp/widgets/vertical_tabs.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const FlutterLogo(
                    size: 50,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search'),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Collectibles'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all(
                                const StadiumBorder())),
                      ),
                    ),
                    const CategoryButton(
                      title: 'Art',
                    ),
                    const CategoryButton(
                      title: 'Sports',
                    ),
                    const CategoryButton(
                      title: 'Gamings',
                    ),
                    const CategoryButton(
                      title: 'Utility',
                    ),
                    const CategoryButton(
                      title: 'Cards',
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notification_add_outlined)),
                ],
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Row(
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 1,
                  child: TabBar(
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorWeight: 6,
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    controller: _tabController,
                    tabs: const <Widget>[
                      VerticalTab(icon: Icon(Icons.home)),
                      VerticalTab(icon: Icon(Icons.image)),
                      VerticalTab(icon: Icon(Icons.shopping_bag_outlined)),
                      VerticalTab(
                        icon: Icon(Icons.star_border_outlined),
                      ),
                      VerticalTab(
                        icon: Icon(Icons.person),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width * 1,
                            child: const Body()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            TextButton.icon(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.menu, color: Colors.black),
                                label: const Text(
                                  'Filter',
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_downward,
                                    color: Colors.black),
                                label: const Text(
                                  'Popular',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomLeft, child: Icon(Icons.settings)),
            )
          ],
        ));
  }
}
