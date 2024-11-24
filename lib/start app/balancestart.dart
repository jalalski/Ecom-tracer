import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ecom_tracker/Cutom%20Widget/textfont.dart';

class StartBalance extends StatefulWidget {
  const StartBalance({super.key});

  @override
  State<StartBalance> createState() => _StartBalanceState();
}

class _StartBalanceState extends State<StartBalance> {
  CollectionReference curantBlance =
      FirebaseFirestore.instance.collection('CurantBlance');
  pushData() async {
    curantBlance.add({"Start Balance": startBalance.text});
  }

  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController startBalance = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const TextFont(
            text: "Start Balance",
            bold: true,
            size: 25,
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: Form(
          key: formState,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextFont(
                  text: "Please enter the starting balance to begin:",
                  bold: true,
                  size: 20,
                  color: Colors.black,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "The filde is emty";
                    }
                    return null;
                  },
                  controller: startBalance,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.attach_money, color: Colors.purple),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.purpleAccent, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter your Start Balance with DZ",
                  ),
                  //keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 30),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        pushData();
                        Navigator.of(context).pushReplacementNamed("HomePage");
                      }
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.purple,
                    height: 50,
                    minWidth: 200,
                    child: const TextFont(
                      text: "Set Balance",
                      bold: true,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
