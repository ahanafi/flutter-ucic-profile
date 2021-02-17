import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Universitas CIC'),
            accountEmail: Text('info@cic.ac.id'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://raw.githubusercontent.com/ahanafi/teaching-activity-app/main/assets/images/ucic-simple.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("images/bg-drawer.jpg")),
            ),
          ),
          ListTile(
            selected: true,
            leading: Icon(Icons.info),
            title: Text('Profil UCIC'),
            onTap: () => Navigator.pushNamed(context, '/home'),
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text('Kata Sambutan Rektor'),
            onTap: () => Navigator.pushNamed(context, '/kata-sambutan'),
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Visi & Misi'),
            onTap: () => Navigator.pushNamed(context, '/visi-misi'),
          ),
          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text('Tujuan'),
            onTap: () => Navigator.pushNamed(context, '/tujuan'),
          ),
          //Divider(),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Sejarah Singkat'),
            onTap: () => Navigator.pushNamed(context, '/sejarah'),
          ),
          ExpansionTile(
            leading: Icon(Icons.school),
            title: Text('Fakultas'),
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: Text('Fak. Teknologi & Informasi'),
                onTap: () => Navigator.pushNamed(context, '/fti'),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: Text('Fak. Ekonomi & Bisnis'),
                onTap: () => Navigator.pushNamed(context, '/feb'),
              ),
            ],
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Author'),
            onTap: () => Navigator.pushNamed(context, '/author'),
          ),
        ],
      ),
    );
  }
}
