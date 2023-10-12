import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/strings.dart';

import '../../../../services/constants/colors.dart';

class CustomButtonViews extends StatelessWidget {
  final String title;
  final int index;
  final Color? color;
  final Color? colorBack;

  const CustomButtonViews({
    super.key,
    required this.title,
    required this.index,
    this.color,
    this.colorBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: colorBack,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        border: Border.all(
          width: 2,
          color: CustomColors.oxFF6949FF,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class ThreeButtons extends StatefulWidget {
  const ThreeButtons({
    super.key,
  });

  @override
  State<ThreeButtons> createState() => _ThreeButtonsState();
}

class _ThreeButtonsState extends State<ThreeButtons> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
            onTap: () {
              currentIndex = 0;
              setState(() {});
            },
            child: CustomButtonViews(
              title: Strings.quizzesTXT,
              index: currentIndex,
              color: currentIndex == 0 ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
              colorBack:
                  currentIndex != 0 ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
            )),
        GestureDetector(
            onTap: () {
              currentIndex = 1;
              setState(() {});
            },
            child: CustomButtonViews(
              title: Strings.groupsTXT,
              index: currentIndex,
              color: currentIndex == 1 ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
              colorBack:
                  currentIndex != 1 ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
            )),
        GestureDetector(
          onTap: () {
            currentIndex = 2;
            setState(() {});
          },
          child: CustomButtonViews(
            title: Strings.subscribersTXT,
            index: currentIndex,
            color: currentIndex == 2 ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
            colorBack:
                currentIndex != 2 ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
          ),
        ),
      ],
    );
  }
}
