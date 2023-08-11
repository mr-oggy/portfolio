import 'package:flutter/material.dart';

import '../statics/key_holders.dart';
import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class MembersData {
  MembersData(this.name, this.profile, this.values);
  final String name;
  final String profile;
  final List<String> values;
}

List<MembersData> members = [
  MembersData('Abhishek Gupta', 'abhi', [
    'Technology\'s',
    'Flutter | Flutter Web | Flutter Desktop | Flutter macOS | Flutter Windows | Flutter Linux | Node.js | MongoDB | Firebase | AWS | Docker | CI/CD | DevOps | Agile | Scrum Design Patterns | Microservices | RESTful APIs ',
    '',
    ''
  ]),
  MembersData('Nikshit Chauhan', 'nik', [
    'Technology\'s',
    'Flutter | Flutter Web | Flutter Desktop | Flutter macOS | Flutter Windows | Flutter Linux |Firebase | AWS | CI/CD | DevOps | Agile',
    ''
  ]),
  MembersData('Shubham Gupta', 'shub', [
    'Technology\'s',
    'Flutter | Flutter Web | Flutter Desktop | Flutter macOS | Flutter Windows | Flutter Linux | Node.js | MongoDB | Firebase | AWS | Docker | CI/CD | DevOps | Agile | Scrum Design Patterns | Microservices | RESTful APIs | Kubernetes | TDD | BDD | DDD | Python | GO',
    ''
  ]),
  MembersData('Dishant Sharma', 'dish', [
    'Technology\'s',
    'React | Node.js | MongoDB | Firebase | AWS | Docker | Next.js | HTML | CSS | JS',
    ''
  ]),
];

class DS2AboutMe extends StatelessWidget {
  const DS2AboutMe({Key? key}) : super(key: key);

  Widget bio(BuildContext context) {
    return SizedBox(
      //color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPairs().type1(
                  title: DataValues.aboutMeBiographyTitle,
                  description: DataValues.aboutMeBiographyDescription,
                ),
                // const SizedBox(height: 40.0),
                // ButtonTextSmall(
                //   text: 'View Full Biography >>',
                //   message: DataValues.biographyURL.toString(),
                //   url: DataValues.biographyURL,
                // ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.08),
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       TextPairs().type1(
          //         title: DataValues.aboutMeFullNameTitle,
          //         description: '',
          //       ),
          //       // const SizedBox(height: 30.0),
          //     ],
          //   ),
          // ),
          // SizedBox(width: MediaQuery.of(context).size.width * 0.08),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPairs().type1(
                  title: DataValues.aboutMeFullNameTitle,
                  description: '',
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  height: 1000,
                  // width: MediaQuery.sizeOf(context).width / 2,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      mainAxisSpacing: 50.0, // Spacing between rows
                      crossAxisSpacing: 20.0, // Spacing between columns
                    ),
                    itemCount: 4, // Number of items in the grid
                    itemBuilder: (BuildContext context, int index) {
                      return GridTile(
                          child: ContainerCard().type5(
                              image: members[index].profile,
                              message: '',
                              title: members[index].name,
                              values: members[index].values));
                    },
                  ),
                ),
                // TextPairs().type1(
                //   title: DataValues.aboutMeLocationTitle,
                //   description: DataValues.aboutMeLocationDescription,
                // ),
                // const SizedBox(height: 30.0),
                // // TextPairs().type1(
                // //   title: DataValues.aboutMeWorkDomainTitle,
                // //   description: DataValues.aboutMeWorkDomainDescription,
                // // ),
                // // const SizedBox(height: 30.0),
                // TextPairs().type1(
                //   title: DataValues.aboutMeHobbiesTitle,
                //   description: DataValues.aboutMeHobbiesDescription,
                // ),
                // const SizedBox(height: 30.0),
                // TextPairs().type1(
                //   title: DataValues.aboutMeGoalTitle,
                //   description: DataValues.aboutMeGoalDescription,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget titles(BuildContext context) {
    return const SizedBox(
      //color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded(
          //   child: ContainerCard().type1(
          //     title: DataValues.aboutMeStudentTitle,
          //     description: DataValues.aboutMeStudentDescription,
          //     image: 'assets/icons/student.png',
          //     message: DataValues.linkedinURL.toString(),
          //     url: DataValues.linkedinURL,
          //   ),
          // ),
          // SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          // Expanded(
          //   child: ContainerCard().type1(
          //     title: DataValues.aboutMeDeveloperTitle,
          //     description: DataValues.aboutMeDeveloperDescription,
          //     image: 'assets/icons/developer.png',
          //     message: DataValues.linkedinURL.toString(),
          //     url: DataValues.linkedinURL,
          //   ),
          // ),
          // SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          // Expanded(
          //   child: ContainerCard().type1(
          //     title: DataValues.aboutMeVolunteerTitle,
          //     description: DataValues.aboutMeVolunteerDescription,
          //     image: 'assets/icons/volunteer.png',
          //     message: DataValues.linkedinURL.toString(),
          //     url: DataValues.linkedinURL,
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.aboutKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.aboutMeTitle, description: DataValues.aboutMeDescription),
            const SizedBox(height: 40.0),
            bio(context),
            const SizedBox(height: 40.0),
            titles(context),
            const SizedBox(height: 80.0),
            // Center(
            //   child: ContainerBanner().type1(
            //       isDesktop: true,
            //       title1: DataValues.aboutMeBanner,
            //       title2: DataValues.aboutMeBannerTitle,
            //       description: DataValues.aboutMeBannerWeb,
            //       image: 'logo',
            //       message: 'View Profiles',
            //       url: DataValues.profilesURL),
            // ),
          ],
        ),
      ),
    );
  }
}
