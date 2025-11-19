import 'package:flutter/material.dart';
import 'package:goalie_s_safehouse_mobile/screens/createproduct_form.dart';
import 'package:goalie_s_safehouse_mobile/screens/productentry_list.dart';

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  // Declare as dynamic to avoid importing the menu (which defines ItemHomepage)
  // and therefore prevent circular imports.
  final dynamic item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
            );

          if (item.name == "Create Product") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductFormPage()));
            return;
          }

          if (item.name == "All Products" || item.name == "My Products") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryListPage()));
            return;
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
