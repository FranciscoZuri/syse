import 'package:flutter/material.dart';
import 'package:syse_desarrollo/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
         const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home: '),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);

            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Materias: '),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Configuración'),
            onTap: () {
             // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: const Text('Esmeralda'),
      accountEmail: const Text('esme@unideh.edu.mx'),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.asset('assets/esme.png'),
        ),
      ),
    );
  }
}
