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
            const Text('Frontend'),
            SizedBox(
              height: 120,
              child: getGrid(frontend),
            ),
            const Text('Backend'),
            SizedBox(
              height: 220,
              child: getGrid(backend),
            ),
            const Text('DevOps'),
            SizedBox(
              height: 220,
              child: getGrid(devops),
            ),
            const Text('Business'),
            SizedBox(
              height: 340,
              child: getGrid(business),
            ),
            const Text('Code'),
            SizedBox(
              height: 220,
              child: getGrid(code),
            ),
            const Text('Designing'),
            SizedBox(
              height: 220,
              child: getGrid(designing),
            ),
            const Text('Developer'),
            SizedBox(
              height: 220,
              child: getGrid(developer),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getGrid(var data) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 16, // Number of columns
      mainAxisSpacing: 0.0, // Spacing between rows
      crossAxisSpacing: 0.0, // Spacing between columns
    ),
    itemCount: data.length, // Number of items in the grid
    itemBuilder: (BuildContext context, int index) {
      return GridTile(
        child: ContainerCard().type6(
          image: data[index],
        ),
      );
    },
  );
}

var backend = [
  '/backend/dark/appwrite',
  '/backend/dark/auth0',
  '/backend/dark/c',
  '/backend/dark/cpp',
  '/backend/dark/dartfrog',
  '/backend/dark/express-js',
  '/backend/dark/firebase',
  '/backend/dark/firecamp',
  '/backend/dark/graphql',
  '/backend/dark/hoppscotch',
  '/backend/dark/java',
  '/backend/dark/kotlin',
  '/backend/dark/microsoft-dotnet-core',
  '/backend/dark/mongodb',
  '/backend/dark/nhost',
  '/backend/dark/node-js',
  '/backend/dark/postgresql',
  '/backend/dark/postman',
  '/backend/dark/python',
  '/backend/dark/serverpod',
  '/backend/dark/sqlite',
  '/backend/dark/supabase',
  '/backend/dark/swagger',
];

var business = [
  '/business/dark/clickup',
  '/business/dark/google-admob',
  '/business/dark/google-ads',
  '/business/dark/google-adsense',
  '/business/dark/google-analytics',
  '/business/dark/google-calendar',
  '/business/dark/google-docs',
  '/business/dark/google-drive',
  '/business/dark/google-forms',
  '/business/dark/google-keep',
  '/business/dark/google-gmail',
  '/business/dark/google-looker-studio',
  '/business/dark/google-maps',
  '/business/dark/google-meet',
  '/business/dark/google-my-business',
  '/business/dark/google-photos',
  '/business/dark/google-play-console',
  '/business/dark/google-search-console',
  '/business/dark/google-sheets',
  '/business/dark/google-slides',
  '/business/dark/google-tag-manager',
  '/business/dark/google-tasks',
  '/business/dark/google-translate',
  '/business/dark/jira',
  '/business/dark/microsoft-365',
  '/business/dark/microsoft-calendar',
  '/business/dark/microsoft-excel',
  '/business/dark/microsoft-forms',
  '/business/dark/microsoft-onedrive',
  '/business/dark/microsoft-onenote',
  '/business/dark/microsoft-outlook',
  '/business/dark/microsoft-powerpoint',
  '/business/dark/microsoft-teams',
  '/business/dark/microsoft-word',
  '/business/dark/microsoft-power-bi',
  '/business/dark/microsoft-outlook',
  '/business/dark/microsoft-todo',
  '/business/dark/notion',
  '/business/dark/sendinblue',
  '/business/dark/slack',
  '/business/dark/trello',
  '/business/dark/zoom',
];

var code = [
  '/code/dark/android-studio',
  '/code/dark/codepen',
  '/code/dark/codesandbox',
  '/code/dark/codespaces',
  '/code/dark/codewithme',
  '/code/dark/dartpad',
  '/code/dark/fleet',
  '/code/dark/github-copilot',
  '/code/dark/gitpod',
  '/code/dark/intellij-idea',
  '/code/dark/jetbrains-toolbox',
  '/code/dark/jsfiddle',
  '/code/dark/pycharm',
  '/code/dark/replit',
  '/code/dark/stackblitz',
  '/code/dark/sublime-text',
  '/code/dark/visual-studio-code',
  '/code/dark/visual-studio',
  '/code/dark/webstorm',
  '/code/dark/windows-terminal',
  '/code/default/dark', //xcode',
];

var designing = [
  '/designing/dark/audacity',
  '/designing/dark/canva',
  '/designing/dark/davinci-resolve',
  '/designing/dark/figma',
  '/designing/dark/flaticon',
  '/designing/dark/freepik',
  '/designing/dark/gimp',
  '/designing/dark/google-fonts',
  '/designing/dark/handbrake',
  '/designing/dark/icons8',
  '/designing/dark/iconscout',
  '/designing/dark/lunacy',
  '/designing/dark/material-design',
  '/designing/dark/obs-studio',
  '/designing/dark/pexels',
  '/designing/dark/photopea',
  '/designing/dark/pixabay',
  '/designing/dark/playbook',
  '/designing/dark/powertoys',
  '/designing/dark/undraw',
  '/designing/dark/unsplash',
  '/designing/dark/wepik',
];

var developer = [
  '/developer/dark/behance',
  '/developer/dark/codechef',
  '/developer/dark/codeproject',
  '/developer/dark/codersrank',
  '/developer/dark/dribbble',
  '/developer/dark/freecodecamp',
  '/developer/dark/glitch',
  '/developer/dark/google',
  '/developer/dark/googledevelopers',
  '/developer/dark/gravatar',
  '/developer/dark/hackerrank',
  '/developer/dark/hackerearth',
  '/developer/dark/kaggle',
  '/developer/dark/keybase',
  '/developer/dark/leetcode',
  '/developer/dark/microsoft',
  '/developer/dark/mlsa',
  '/developer/dark/producthunt',
  '/developer/dark/stackoverflow',
  '/developer/dark/topcoder',
];

var devops = [
  '/devops/dark/appstore',
  '/devops/dark/aws',
  '/devops/dark/bitbucket',
  '/devops/dark/bitrise',
  '/devops/dark/circleci',
  '/devops/dark/cloudflare',
  '/devops/dark/codemagic',
  '/devops/dark/digitalocean',
  '/devops/dark/docker',
  '/devops/dark/git',
  '/devops/dark/github',
  '/devops/dark/gitkraken',
  '/devops/dark/gitlab',
  '/devops/dark/google-cloud-platform',
  '/devops/dark/google-play',
  '/devops/dark/microsoft-azure',
  '/devops/dark/microsoft-store',
  '/devops/dark/netlify',
  '/devops/dark/sentry',
  '/devops/dark/vercel',
];

var frontend = [
  '/frontend/dark/android',
  '/frontend/dark/bootstrap',
  '/frontend/dark/c-sharp',
  '/frontend/dark/css',
  '/frontend/dark/dart',
  '/frontend/dark/flutter',
  '/frontend/dark/flutterflow',
  '/frontend/dark/google-sites',
  '/frontend/dark/html',
  '/frontend/dark/javascript',
  '/frontend/dark/microsoft-dotnet',
  '/frontend/dark/next-js',
  '/frontend/dark/react',
  '/frontend/dark/wix',
  '/frontend/dark/wordpress',
  '/frontend/dark/xamarin',
];
