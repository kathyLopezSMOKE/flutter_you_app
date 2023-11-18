import 'package:flutter/material.dart';
import 'package:flutter_you_app/services/api_service.dart';
import 'package:flutter_you_app/ui/general/colors.dart';
import 'package:flutter_you_app/ui/widgets/item_filter_widget.dart';
import 'package:flutter_you_app/ui/widgets/item_video_widget.dart';

class HomePage extends StatelessWidget {
  final APIService _apiService= APIService();

  @override
  Widget build(BuildContext context) {
    
    _apiService.getVideos();

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
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
                  ItemFilterWidget(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Musica",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Programacion",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            const SizedBox( height: 10.0),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
          ],
        ),
      ),
    );
  }
}
