import 'package:flutter/material.dart';
import 'package:goalie_s_safehouse_mobile/models/product_entry.dart';
import 'package:goalie_s_safehouse_mobile/screens/product_detail.dart';
import 'package:goalie_s_safehouse_mobile/widgets/left_drawer.dart';
import 'package:goalie_s_safehouse_mobile/widgets/productentry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';


class ProductEntryListPage extends StatefulWidget {
  const ProductEntryListPage({super.key});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
    // TODO: Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000
    
    final response = await request.get('http://localhost:8000/json/');

    List<ProductEntry> products = [];
    for (var d in response) {
      if (d != null) {
        products.add(ProductEntry.fromJson(d));
      }
    }
    return products;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No products available yet.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff59A5D8),
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => ProductEntryCard(
              product: snapshot.data![index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      product: snapshot.data![index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
