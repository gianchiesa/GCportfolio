import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gcportfolio/presentation/presentation.dart';
import 'package:gcportfolio/utils/utils.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key, required this.animationController});

  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return AnimatedWidgetShape(
      animationController: animationController,
      width: responsiveSize(
        context,
        Dimens.space250 + Dimens.space12,
        Dimens.space400 + Dimens.space12,
        tablet: Dimens.space280 + Dimens.space12,
      ),
      height: responsiveSize(
        context,
        Dimens.space250 + Dimens.space12,
        Dimens.space400 + Dimens.space12,
        tablet: Dimens.space280 + Dimens.space12,
      ),
      boxShape: BoxShape.circle,
      child: SvgPicture.asset(
        Images.icAvatar,
        height: Dimens.space30,
      ),
      // Stack(
      //   children: [
      //     CircleAvatar(
      //       radius: Dimens.space24,
      //       backgroundColor: Theme.of(context).cardColor,
      //     ),
      //     CircleAvatar(
      //       radius: responsiveSize(
      //             context,
      //             Dimens.space64,
      //             Dimens.space150,
      //             tablet: Dimens.space72,
      //           ) +
      //           Dimens.space12,
      //       backgroundColor: Theme.of(context).cardColor,
      //       child: SvgPicture.asset(
      //         Images.icAvatar,
      //         height: Dimens.space30,
      //       ),

      //       // CircleAvatar(
      //       //   backgroundImage: AssetImage(Images.icAvatar),
      //       //   // backgroundColor: Colors.transparent,
      //       //   radius: responsiveSize(
      //       //     context,
      //       //     Dimens.space58,
      //       //     Dimens.space92,
      //       //     tablet: Dimens.space72,
      //       //   ),
      //       // ),
      //     ),
      //   ],
      // ),
    );
  }
}
