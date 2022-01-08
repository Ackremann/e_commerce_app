part of '../view.dart';

class _Home_Drawer extends StatelessWidget {
  const _Home_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(gradient: gradient),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
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
                    // minVerticalPadding: 10,
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
    );
  }
}
