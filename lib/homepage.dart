import 'package:ecom_tracker/Cutom%20Widget/rowshow.dart';
import 'package:ecom_tracker/Cutom%20Widget/textfont.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // يمكن تخصيص هذه العملية لإضافة مبيعات جديدة
          },
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add, size: 30),
        ),
        appBar: AppBar(
          title: const TextFont(
            text: "Dashboard",
            bold: true,
            size: 25,
            color: Colors.white,
          ),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // يمكن تخصيص هذا لإعدادات التطبيق
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      RowShow(
                        firstText: "Current Balance:",
                        secondText: "\$0.00",
                      ),
                      Divider(),
                      RowShow(
                        firstText: "Total Sales:",
                        secondText: "\$0.00",
                      ),
                      Divider(),
                      RowShow(
                        firstText: "Other Expenses:",
                        secondText: "\$0.00",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const TextFont(
                  text: "View Reports",
                  bold: true,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
