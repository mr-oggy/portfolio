import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';

class MS8Footer extends StatelessWidget {
  const MS8Footer({Key? key}) : super(key: key);

  Widget getSourceCode(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchUrl(DataValues.repoURL);
        },
        child: Tooltip(
          message: DataValues.repoURL.toString(),
          child: Text(
            'Get Source Code',
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundBlack,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SelectableText(
            'The icons on this website belong to their respective companies and are their trademarks and property. These icons are used for visual representation only and do not imply any endorsement or affiliation.',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(
            DataValues.copyright,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
