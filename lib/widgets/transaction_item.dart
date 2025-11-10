import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatefulWidget {
  final TransactionModel transaction;
  final int index;

  const TransactionItem({
    super.key,
    required this.transaction,
    required this.index,
  });

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  double _scale = 1.0;

  // 🏍️ Dapatkan path logo berdasarkan nama motor
  String getLogoPath(String title) {
    switch (title.toUpperCase()) {
      case 'RX KING':
        return 'assets/images/RXKING.png';
      case 'SUZUKI RGR 150':
        return 'assets/images/SUZUKIRGR150.png';
      case 'SUZUKI SATRIA R120':
        return 'assets/images/SUZUKISATRIAR120.png';
      case 'YAMAHA FIZ R':
        return 'assets/images/YAMAHAFIZR.png';
      case 'NINJA RR':
        return 'assets/images/NINJARR.png';
      default:
        return 'assets/images/KERANJANG.png'; // fallback
    }
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 500 + (widget.index * 100)),
      curve: Curves.easeOutBack,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, (1 - value) * 40),
            child: child,
          ),
        );
      },
      child: GestureDetector(
        onTapDown: (_) => setState(() => _scale = 0.96),
        onTapUp: (_) => setState(() => _scale = 1.0),
        onTapCancel: () => setState(() => _scale = 1.0),
        child: AnimatedScale(
          scale: _scale,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOut,
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            shadowColor: Colors.deepPurple.withOpacity(0.3),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 10),

              // 🏍️ Logo motor di kiri
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  getLogoPath(widget.transaction.title),
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                ),
              ),

              // Judul dan kategori
              title: Text(
                widget.transaction.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                widget.transaction.category,
                style: const TextStyle(color: Colors.grey),
              ),

              // Jumlah uang
              trailing: Text(
                widget.transaction.amount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: widget.transaction.amount.startsWith('-')
                      ? Colors.red
                      : Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
