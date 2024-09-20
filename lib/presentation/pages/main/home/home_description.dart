import 'package:flutter/material.dart';
import 'package:gcportfolio/core/core.dart';
import 'package:gcportfolio/presentation/presentation.dart';
import 'package:gcportfolio/presentation/widgets/animated_text_box_loop.dart';
import 'package:gcportfolio/utils/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeDescription extends StatelessWidget {
  const HomeDescription({
    super.key,
    required this.animationController,
  });

  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedTextBox(
            animationController: animationController,
            text: "Hi There!",
            maxLines: 3,
            textStyle: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: responsiveSize(
                    context,
                    Dimens.space36,
                    Dimens.h1 - 20,
                    tablet: Dimens.h2,
                  ),
                ),
          ),
          Row(
            children: [
              AnimatedTextBox(
                animationController: animationController,
                text: "I'M ",
                heightFactor: responsiveSize(context, 2, 1),
                maxLines: responsiveSize(context, 2, 1).toInt(),
                textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: responsiveSize(
                        context,
                        Dimens.space36 - 16,
                        Dimens.h1 - 30,
                        tablet: Dimens.h2 - 4,
                      ),
                    ),
              ),
              AnimatedTextBox(
                animationController: animationController,
                text: "GIAN CHIESA MAGHRIZA",
                heightFactor: responsiveSize(context, 2, 1),
                maxLines: responsiveSize(context, 2, 1).toInt(),
                textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Palette.primary,
                      fontSize: responsiveSize(
                        context,
                        Dimens.space36 - 16,
                        Dimens.h1 - 30,
                        tablet: Dimens.h2 - 4,
                      ),
                    ),
              ),
            ],
          ),
          SpacerV(value: Dimens.space24),
          AnimatedTextBoxLoop(
            animationController: animationController,
            text: "Mobile Apps Developer",
            heightFactor: responsiveSize(context, 2, 1),
            maxLines: responsiveSize(context, 2, 1).toInt(),
            textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Palette.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: responsiveSize(
                    context,
                    Dimens.space36 - 8,
                    Dimens.h1 - 40,
                    tablet: Dimens.h2 - 8,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
