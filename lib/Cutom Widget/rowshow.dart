import 'package:ecom_tracker/Cutom%20Widget/textfont.dart';
import 'package:flutter/material.dart';

class RowShow extends StatelessWidget {
  final String firstText;
  final String secondText;

  const RowShow({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // تعديل لتوفير مساحة بين العناصر
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // جعل العناصر متباعدة
        children: [
          // تحسين عرض النص الأول باستخدام ألوان أكثر وضوحًا
          TextFont(
            text: firstText,
            bold: true,
            size: 18,
            color: Colors.grey[800]!,
          ),
          // تحسين عرض النص الثاني باستخدام ألوان غامقة
          TextFont(
            text: secondText,
            bold: true,
            size: 18,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
