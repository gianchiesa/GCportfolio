import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gcportfolio/core/core.dart';
import 'package:gcportfolio/data/datasources/datasources.dart';
import 'package:gcportfolio/presentation/presentation.dart';
import 'package:gcportfolio/utils/helper/helper.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late final List<DataHelper> _listSupport = [];

  late final List<DataHelper> _listStore = [];
  List<DataHelper> _listSocialMedia = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _listSocialMedia = [
      DataHelper(
        iconPath: Images.icGithub,
        url: Constants.get.githubCommunityUrl,
        iconColor: Theme.of(context).textTheme.bodyText1?.color,
      ),
      DataHelper(
        iconPath: Images.icLinkedIn,
        url: Constants.get.linkedInUrl,
        iconColor: Theme.of(context).textTheme.bodyText1?.color,
      ),
      DataHelper(
        iconPath: Images.icInstagram,
        url: Constants.get.instagramUrl,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).cardColor,
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.space30,
              vertical: Dimens.space20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Wrap(
                    alignment: WrapAlignment.spaceAround,
                    runSpacing: Dimens.space24,
                    children: [
                      _buildSocialMedia(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _logo(),
        ],
      ),
    );
  }

  Widget _buildSupport(BuildContext context) => SizedBox(
        width: Dimens.space200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Strings.of(context)!.support,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
            const SpacerV(),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: _listSupport
                  .map(
                    (e) => TextButton(
                      onPressed: () => launchUrlString(e.url!),
                      child: Text(
                        e.title ?? "",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: Palette.primary,
                            ),
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      );

  Widget _buildSocialMedia(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Strings.of(context)!.socialMedia,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontWeight: FontWeight.normal),
          ),
          const SpacerV(),
          Wrap(
            children: _listSocialMedia
                .map(
                  (e) => IconButton(
                    onPressed: () {
                      launchUrlString(e.url!);
                    },
                    icon: SvgPicture.asset(
                      e.iconPath ?? "",
                      color: e.iconColor,
                      width: Dimens.space24,
                    ),
                  ),
                )
                .toList(),
          )
        ],
      );

  Widget _buildStore(BuildContext context) => Wrap(
        children: _listStore
            .map(
              (e) => InkWell(
                onTap: () {
                  launchUrlString(e.url!);
                },
                child: Image.asset(e.iconPath ?? "", width: Dimens.space200),
              ),
            )
            .toList(),
      );

  Widget _logo() => FooterCopyRight(context: context);
}
