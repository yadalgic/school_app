import 'package:first_app/src/features/authentication/screeens/inside/drawer/ayarlar.drawer.dart';
import 'package:first_app/src/features/authentication/screeens/inside/drawer/belgetalep_drawer.dart';
import 'package:first_app/src/features/authentication/screeens/inside/drawer/canlidestek_drawer.dart';
import 'package:first_app/src/features/authentication/screeens/inside/drawer/konum.drawer.dart';
import 'package:first_app/src/features/authentication/screeens/inside/drawer/sss_drawer.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade50,
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red.shade900,
              ),
              accountName: Text('Kullanici Adi'),
              accountEmail: Text('mail@sbu.edu.tr'),
              currentAccountPicture: CircleAvatar(
                /* backgroundImage:
                    AssetImage('assets/images/clip-education-1.png'), */
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.red.shade900,
                ),
                radius: 30,
              ),
            ),
            Column(
              children: [
                DrawerButton(
                  icon: Icons.settings,
                  title: 'Ayarlar',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Ayarlar(),
                      ),
                    );
                  },
                ),
                DrawerButton(
                  icon: Icons.question_answer_outlined,
                  title: 'Canli Destek',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CanliDestek(),
                      ),
                    );
                  },
                ),
                DrawerButton(
                  icon: Icons.edit_document,
                  title: 'Belge Talep',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BelgeTalep(),
                      ),
                    );
                  },
                ),
                DrawerButton(
                  icon: Icons.location_on_outlined,
                  title: 'Konum',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Konum(),
                      ),
                    );
                  },
                ),
                DrawerButton(
                  icon: Icons.question_mark_outlined,
                  title: 'Sık Sorulan Sorular',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SSS(),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const DrawerButton({
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}
