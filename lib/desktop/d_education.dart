import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS3Education extends StatelessWidget {
  const DS3Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.educationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.educationTitle, description: DataValues.educationDescription),
            SizedBox(
              height: 1000,
              // width: MediaQuery.sizeOf(context).width / 2,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 20, // Number of columns
                  mainAxisSpacing: 50.0, // Spacing between rows
                  crossAxisSpacing: 20.0, // Spacing between columns
                ),
                itemCount: 100, // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  return GridTile(
                    child: ContainerCard().type6(
                      image: 'members[index].profie',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
