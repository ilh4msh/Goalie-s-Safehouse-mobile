import 'package:flutter/material.dart';
import 'package:goalie_s_safehouse_mobile/screens/menu.dart';
import 'package:goalie_s_safehouse_mobile/screens/createproduct_form.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:goalie_s_safehouse_mobile/screens/Login.dart';
import 'package:goalie_s_safehouse_mobile/screens/productentry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF0000FE),
            ),
            child: Column(
              children: [
                Text(
                  'Goalie\'s Safehouse',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh Perlengkapan kiper ada di sini!",
                  textAlign:  TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add Product'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('View Products'),
            // Bagian redirection ke ProductsListPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryListPage(),
                  ));
            },
          ),
          if (!Provider.of<CookieRequest>(context, listen: false).loggedIn) ...[
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
            ),
          ] else ...[
            ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () async {
              final response = await Provider.of<CookieRequest>(context, listen: false).logout(
                "http://localhost:8000/auth/logout/",
              );

              if (!context.mounted) return;

              // Refresh halaman lebih dulu agar Drawer rebuild (logout → login)
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
              );

              // Setelah rebuild selesai baru tampilkan snackbar
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Logout berhasil!"),
                  ),
                );
              });
            },
          ),
          ],
        ],
      ),
    );
  }
}