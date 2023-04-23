import 'package:dont_forget_app/feature/home/widgets/no_data.dart';
import 'package:dont_forget_app/feature/home/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SingleChildScrollView(
      //   padding: const EdgeInsets.all(26),
      //   child: Column(
      //     children: const [
      //       TextField(
      //         decoration: InputDecoration(
      //           prefixIcon: Icon(Icons.search),
      //           enabledBorder: OutlineInputBorder(),
      //           focusedBorder: InputBorder.none,
      //           hintText: "Find by title",
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Stack(
        children: [
          Container(
            alignment: const Alignment(0, 1),
            child: const SearchTextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
