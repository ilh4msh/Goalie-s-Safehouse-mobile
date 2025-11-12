import 'package:flutter/material.dart';
import 'package:goalie_s_safehouse_mobile/widgets/left_drawer.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _description = "";
  String _category = "jersey"; // default sesuai model
  String _thumbnail = "";
  int _price = 0;
  int _stock = 0;
  String _size = "l"; // default sesuai model

  final List<String> _categories = [
    "jersey",
    "celana",
    "sarung_tangan",
    "sepatu",
    "pelindung",
    "kaos_kaki",
    "aksesoris",
  ];

  final List<String> _sizes = [
    "xs",
    "s",
    "m",
    "l",
    "xl",
    "xxl",
    "xxxl",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Form Tambah Produk'),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // === Nama Produk ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Produk",
                    labelText: "Nama Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nama produk tidak boleh kosong!";
                    }
                    if (value.trim().isEmpty) {
                      return "Nama produk tidak boleh hanya berisi spasi!";
                    }
                    if (value.length < 3) {
                      return "Nama produk minimal 3 karakter!";
                    }
                    if (value.length > 100) {
                      return "Nama produk maksimal 100 karakter!";
                    }
                    return null;
                  },
                ),
              ),

              // === Deskripsi Produk ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Deskripsi Produk",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _description = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    if (value.trim().isEmpty) {
                      return "Deskripsi tidak boleh hanya berisi spasi!";
                    }
                    if (value.length < 10) {
                      return "Deskripsi minimal 10 karakter!";
                    }
                    if (value.length > 500) {
                      return "Deskripsi maksimal 500 karakter!";
                    }
                    return null;
                  },
                ),
              ),

              // === Kategori ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Kategori",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  value: _category,
                  items: _categories
                      .map((cat) => DropdownMenuItem(
                            value: cat,
                            child: Text(cat.replaceAll("_", " ").toUpperCase()),
                          ))
                      .toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _category = newValue!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Kategori tidak boleh kosong!";
                    }
                    if (!_categories.contains(value)) {
                      return "Kategori tidak valid!";
                    }
                    return null;
                  },
                ),
              ),

              // === Thumbnail ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "URL Gambar Produk (Opsional)",
                    labelText: "Thumbnail (Opsional)",
                    helperText: "Kosongkan jika tidak ada gambar",
                    helperStyle: TextStyle(color: Colors.grey[600]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _thumbnail = value;
                    });
                  },
                  validator: (value) {
                    // Jika kosong, tidak masalah (opsional)
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    
                    // Jika diisi tapi hanya spasi
                    if (value.trim().isEmpty) {
                      return "URL gambar tidak boleh hanya berisi spasi!";
                    }
                    
                    // Validasi format URL
                    Uri? uri = Uri.tryParse(value);
                    if (uri == null || !uri.isAbsolute) {
                      return "Masukkan URL yang valid!";
                    }
                    
                    // Validasi protokol URL (harus http atau https)
                    if (!uri.scheme.startsWith('http')) {
                      return "URL harus menggunakan protokol http atau https!";
                    }
                    
                    // Validasi ekstensi file gambar
                    String lowerPath = uri.path.toLowerCase();
                    List<String> validExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.webp', '.svg'];
                    bool hasValidExtension = validExtensions.any((ext) => lowerPath.endsWith(ext));
                    
                    if (!hasValidExtension) {
                      return "URL harus mengarah ke file gambar (jpg, jpeg, png, gif, webp, svg)!";
                    }
                    
                    return null;
                  },
                ),
              ),

              // === Harga ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Harga Produk",
                    labelText: "Harga (Rp)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _price = int.tryParse(value) ?? 0;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Harga tidak boleh kosong!";
                    }
                    
                    int? price = int.tryParse(value);
                    if (price == null) {
                      return "Harga harus berupa angka bulat!";
                    }
                    
                    if (price <= 0) {
                      return "Harga harus lebih dari 0!";
                    }
                    
                    if (price > 1000000000) {
                      return "Harga terlalu besar (maksimal 1 miliar)!";
                    }
                    
                    return null;
                  },
                ),
              ),

              // === Stok ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Jumlah Stok",
                    labelText: "Stok",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _stock = int.tryParse(value) ?? 0;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Stok tidak boleh kosong!";
                    }
                    
                    int? stock = int.tryParse(value);
                    if (stock == null) {
                      return "Stok harus berupa angka bulat!";
                    }
                    
                    if (stock < 0) {
                      return "Stok tidak boleh negatif!";
                    }
                    
                    if (stock > 100000) {
                      return "Stok terlalu besar (maksimal 100.000)!";
                    }
                    
                    return null;
                  },
                ),
              ),

              // === Ukuran ===
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Ukuran",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  value: _size,
                  items: _sizes
                      .map((sz) => DropdownMenuItem(
                            value: sz,
                            child: Text(sz.toUpperCase()),
                          ))
                      .toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _size = newValue!;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Ukuran tidak boleh kosong!";
                    }
                    if (!_sizes.contains(value)) {
                      return "Ukuran tidak valid!";
                    }
                    return null;
                  },
                ),
              ),

              // === Tombol Simpan ===
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Produk berhasil disimpan!'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: $_name'),
                                    Text('Deskripsi: $_description'),
                                    Text('Kategori: $_category'),
                                    Text('Harga: Rp ${_price.toString()}'),
                                    Text('Stok: $_stock'),
                                    Text('Ukuran: ${_size.toUpperCase()}'),
                                    Text('Thumbnail: $_thumbnail'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                    // Reset ke nilai default
                                    setState(() {
                                      _name = "";
                                      _description = "";
                                      _category = "jersey";
                                      _thumbnail = "";
                                      _price = 0;
                                      _stock = 0;
                                      _size = "l";
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}