import 'package:animation_in_boarding/constants.dart';
import 'package:animation_in_boarding/screens/login/login.dart';
import 'package:animation_in_boarding/screens/onboarding/pages/community/community_light_card_content.dart';
import 'package:animation_in_boarding/screens/onboarding/pages/education/educationDarkCardContent.dart';
import 'package:animation_in_boarding/screens/onboarding/pages/work/workContent.dart';
import 'package:animation_in_boarding/widgets/header.dart';
import 'package:animation_in_boarding/widgets/next_page_button.dart';
import 'package:animation_in_boarding/widgets/onbording_page.dart';
import 'package:flutter/material.dart';
import '../../widgets/onboardingpage_indicator.dart';
import 'pages/community/community_dark_card_content.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 1;
  bool get isFirstPage => _currentPage == 1;

  Widget _getPage() {
    switch (_currentPage) {
      case 1:
        return OnbordingPage(
          darkCardChild: CommunityDarkCardContent(),
          lightCardChild: CommunityLightCardContent(),
          number: 1,
          textColumn: CommunityTextColumn(),
        );
      case 2:
        return OnbordingPage(
          darkCardChild: EducationDarkCardContent(),
          lightCardChild: EduactionLightCardContent(),
          number: 2,
          textColumn: EducationtextColumn(),
        );
      case 3:
        return OnbordingPage(
          darkCardChild: WorkDarkCardContent(),
          lightCardChild: WorkLightCardContent(),
          number: 3,
          textColumn: WorkTextColumn(),
        );
      default:
        throw Exception("page doent exixtrs");
    }
  }

  void _setNextPage(int nextPageNumber) {
    setState(() {
      _currentPage = nextPageNumber;
    });
  }

  void _nextPage() {
    switch (_currentPage) {
      case 1:
        _setNextPage(2);
        break;
      case 2:
        _setNextPage(3);
        break;
    }
  }

  void _goToLogin() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => Login(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlue,
        body: Padding(
          padding: EdgeInsets.all(kPaddingl),
          child: Column(
            children: [
              Header(
                onSkip: _goToLogin,
              ),
              Expanded(child: _getPage()),
              OnBoardingPageIndicator(
                currentPage: _currentPage,
                child: NextPageButton(onPressed: _nextPage),
              )
            ],
          ),
        ));
  }
}
