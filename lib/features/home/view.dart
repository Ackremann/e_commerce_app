import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/const/icons/drawer_icons.dart';
import 'package:flutter/material.dart';
part 'units/gradient_bottomvanbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Image.asset(
              'assets/icons/appbar/menu.png',
              width: 20,
              height: 20,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/appbar/bell.png',
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/appbar/shopping-cart.png',
              width: 20,
              height: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: gradient2,
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: Column(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _GradientBottomNavBar(),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(gradient: gradient),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.transparent),
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Mahmoud Sherif',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'm1shery2@gmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                endIndent: 50,
                indent: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minVerticalPadding: 10,
                      onTap: () {},
                      leading: RamniIcons.drawerIcons[index],
                      title: Text('${RamniIcons.drawerTitle[index]}'),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
