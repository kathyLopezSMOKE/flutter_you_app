import 'package:flutter/material.dart';
import 'package:flutter_you_app/ui/general/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: KBrandSecondaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                  ),
                  icon: const Icon(
                    Icons.explore_outlined,
                  ),
                  label: const Text(
                    "Explorar",
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                  child: VerticalDivider(
                    color: Colors.white30,
                    thickness: 1.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Chip(
                    backgroundColor: KBrandSecondaryColor,
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    label: Text("Todos"),
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
