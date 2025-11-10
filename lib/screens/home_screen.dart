import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentIndex = 0;

  // ====== DATA KARTU BANK ======
  final List<Map<String, dynamic>> _cards = [
    {
      'bankName': 'Bank BRI',
      'cardNumber': '**** 2345',
      'balance': 'Rp12.500.000',
      'color1': const Color.fromARGB(255, 31, 20, 192),
      'color2': const Color.fromARGB(255, 248, 247, 246),
      'logo': 'assets/images/BRI.png',
    },
    {
      'bankName': 'Bank BNI',
      'cardNumber': '**** 8765',
      'balance': 'Rp5.350.000',
      'color1': Colors.orange,
      'color2': const Color.fromARGB(255, 252, 115, 3),
      'logo': 'assets/images/BNI.png',
    },
    {
      'bankName': 'Bank Mandiri',
      'cardNumber': '**** 5432',
      'balance': 'Rp8.900.000',
      'color1': const Color.fromARGB(255, 20, 5, 231),
      'color2': const Color.fromARGB(255, 4, 28, 248),
      'logo': 'assets/images/MANDIRI.png',
    },
    {
      'bankName': 'Bank Mega',
      'cardNumber': '**** 1122',
      'balance': 'Rp3.750.000',
      'color1': const Color.fromARGB(255, 238, 234, 4),
      'color2': const Color.fromARGB(255, 205, 228, 5),
      'logo': 'assets/images/MEGA.png',
    },
    {
      'bankName': 'Bank BCA',
      'cardNumber': '**** 9988',
      'balance': 'Rp10.250.000',
      'color1': const Color.fromARGB(255, 8, 150, 206),
      'color2': const Color.fromARGB(255, 12, 109, 173),
      'logo': 'assets/images/BCA.png',
    },
    {
      'bankName': 'Bank Indonesia',
      'cardNumber': '**** 6677',
      'balance': 'Rp50.000.000',
      'color1': const Color.fromARGB(255, 207, 211, 236),
      'color2': const Color.fromARGB(255, 158, 194, 199),
      'logo': 'assets/images/INDONESIA.png',
    },
  ];

  // ====== DATA TRANSAKSI ======
  final transactions = [
    TransactionModel('RX KING', '-Rp10.000.000', 'Motor Jabret'),
    TransactionModel('SUZUKI RGR 150', '-Rp125.000.000', 'Motor Tercepat'),
    TransactionModel('SUZUKI SATRIA R120', '-Rp600.000.000', 'Motor 2 Tak Terbaik '),
    TransactionModel('YAMAHA FIZ R', '-Rp 1000.000.000.', 'Motor Bebek'),
    TransactionModel('NINJA RR', '-Rp80.000', 'Motor Bergaya Naked Bike'),
    TransactionModel('KERANJANG', '+Rp5.000.000', 'Salam 2 Tak'),
  ];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('GALERI 2 STROKE'),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 101, 184, 240),
      foregroundColor: const Color.fromARGB(255, 52, 54, 54),
    ),
    body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// ==== ATM CARD SECTION ====
const Text(
  'Kartu Saya',
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10),

SizedBox(
  height: 220, // tinggi area kartu
  child: PageView.builder(
    controller: _pageController,
    itemCount: _cards.length,
    onPageChanged: (index) => setState(() => _currentIndex = index),
    itemBuilder: (context, index) {
      final card = _cards[index];
      final bool isActive = _currentIndex == index;
      final double scale = isActive ? 1.0 : 0.92;

      return AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 6), // jarak antar kartu
          width: MediaQuery.of(context).size.width * 0.75, // 🔹 75% lebar layar — tampak pas & elegan
          height: 180,
          child: AtmCard(
            bankName: card['bankName'],
            cardNumber: card['cardNumber'],
            balance: card['balance'],
            color1: card['color1'],
            color2: card['color2'],
            logoPath: card['logo'],
          ),
        ),
      );
    },
  ),
),



          const SizedBox(height: 10),

          // ==== CATEGORY SECTION ====
          const Text(
            'Kategori',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

        SizedBox(
  height: 260, // lebih tinggi agar muat kartu
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: const [
      GridMenuItem(
        label: 'RXKING',
        imagePath: 'assets/images/RXKING.png',
      ),
      GridMenuItem(
        label: 'SUZUKI RGR 150',
        imagePath: 'assets/images/SUZUKIRGR150.png',
      ),
      GridMenuItem(
        label: 'SUZUKI SATRIA R120',
        imagePath: 'assets/images/SUZUKISATRIAR120.png',
      ),
      GridMenuItem(
        label: 'YAMAHA FIZ R',
        imagePath: 'assets/images/YAMAHAFIZR.png',
      ),
      GridMenuItem(
        label: 'NINJA RR',
        imagePath: 'assets/images/NINJARR.png',
      ),
    ],
  ),
),


          const SizedBox(height: 24),

          // ==== TRANSACTION SECTION ====
          const Text(
            'Transaksi Terbaru',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          // ==== LIST TRANSAKSI DENGAN ANIMASI ====
ListView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  itemCount: transactions.length,
  itemBuilder: (context, index) {
    return TransactionItem(
      transaction: transactions[index],
      index: index, // 👈 penting! dikirim ke widget
    );
  },
),
        ],
      ),
    ),
  );
}
}

