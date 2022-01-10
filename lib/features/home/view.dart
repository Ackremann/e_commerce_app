import 'package:e_commerce_app/const/colors/colors.dart';
import 'package:e_commerce_app/const/icons/drawer_icons.dart';
import 'package:e_commerce_app/const/responsive.dart';
import 'package:e_commerce_app/widget/gradient_button.dart';
import 'package:e_commerce_app/widget/product_card.dart';
import 'package:e_commerce_app/widget/search_bar.dart';
import 'package:flutter/material.dart';
part 'units/gradient_bottomvanbar.dart';
part 'units/drawer.dart';

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
              // borderRadius: BorderRadius.only(
              //   bottomRight: Radius.circular(25),
              //   bottomLeft: Radius.circular(25),
              // ),
            ),
            width: double.infinity,
            height: sizeFromHeight(context, 1.5),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SearchBar(hintText: 'hintText'),
                        IconButton(onPressed: () {}, icon: Icon(Icons.sort))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Trending Product'),
                          TextButton(onPressed: () {}, child: Text('See All'))
                        ],
                      ),
                    ),
                    Container(
                      height: sizeFromHeight(context, 3.9),
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 20,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: sizeFromWidth(context, 2.5),
                            child: ProductCard(
                              text: 'text',
                              imageUrl:
                                  "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Illustrations%20Icons%2Fgamingmouse.png?alt=media&token=81fd6f20-2322-4435-af62-25b4cf5d9e81",
                              price: 'subtitle',
                              onPressed: () {},
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Trending Product'),
                          TextButton(onPressed: () {}, child: Text('See All'))
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: GradientElevatedButton(
                              onPressed: () {},
                              child: Text('Catagory'),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: sizeFromHeight(context, 3.9),
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          separatorBuilder: (context, index) {
                            return Container(
                              width: 20,
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                              width: sizeFromWidth(context, 2.5),
                              child: ProductCard(
                                text: 'text',
                                imageUrl:
                                    "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Illustrations%20Icons%2Fgamingmouse.png?alt=media&token=81fd6f20-2322-4435-af62-25b4cf5d9e81",
                                price: 'subtitle',
                                onPressed: () {},
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _GradientBottomNavBar(),
      drawer: _Home_Drawer(),
    );
  }
}
