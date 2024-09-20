import 'package:flutter/material.dart';
import 'package:gcportfolio/core/core.dart';
import 'package:gcportfolio/presentation/presentation.dart';
import 'package:gcportfolio/utils/utils.dart';

class FooterCopyRight extends StatelessWidget {
  const FooterCopyRight({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: Dimens.space16),
      child: Column(
        children: [
          Text(
            "\u00a9 ${DateTime.now().year} ${Constants.get.appName}",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
