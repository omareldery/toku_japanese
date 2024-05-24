import 'package:flutter/material.dart';
import 'package:untitled2/components/custom_category_widget.dart';
import 'package:untitled2/views/colors_view.dart';
import 'package:untitled2/views/family_members.dart';
import 'package:untitled2/views/numbers_view.dart';
import 'package:untitled2/views/phrases_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku japanese',
          style: TextStyle(color: Colors.white,
          letterSpacing: 2,
           ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NumbersView(),
                      ),
                    );
                  },
                  child: const CustomCategoryWidget(
                    title: 'Numbers',
                    color: Color(0xffEF9235),
                  ),
                ),
                const Spacer(),
                 InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FamilyMembersView(),
                      ),
                    );
                  },
                  child: const CustomCategoryWidget(
                    title: 'Family Members',
                    color: Color(0xff558B37),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
             Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ColorsView(),
                      ),
                    );
                  },
                  child: const CustomCategoryWidget(
                    title: 'Colors',
                    color: Color(0xff79359F),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhrasesView(),
                      ),
                    );
                  },
                  child: const CustomCategoryWidget(
                    title: 'Phrases',
                    color: Color(0xff50ADC7),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
