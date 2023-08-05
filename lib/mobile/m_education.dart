import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS3Education extends StatelessWidget {
  const MS3Education({Key? key}) : super(key: key);

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
            const FrameTitle(title: DataValues.educationTitle, description: DataValues.educationDescription),
            const SizedBox(height: 30.0),
            ContainerCard().type2(
              image: 'goa_university',
              title: DataValues.educationOrg1Title,
              values: [
                DataValues.educationOrg1Course1Name,
                DataValues.educationOrg1Course1Grade,
                DataValues.educationOrg1Course1Year,
              ],
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type2(
              image: 'jetking',
              title: DataValues.educationOrg2Title,
              values: [
                DataValues.educationOrg2Course1Name,
                DataValues.educationOrg2Course1Grade,
                DataValues.educationOrg2Course1Year,
              ],
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type2(
              image: 'mes',
              title: DataValues.educationOrg3Title,
              values: [
                DataValues.educationOrg3Course1Name,
                DataValues.educationOrg3Course1Grade,
                DataValues.educationOrg3Course1Year,
              ],
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type2(
              image: 'kshs',
              title: DataValues.educationOrg4Title,
              values: [
                DataValues.educationOrg4Course1Name,
                DataValues.educationOrg4Course1Grade,
                DataValues.educationOrg4Course1Year,
              ],
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
          ],
        ),
      ),
    );
  }
}
