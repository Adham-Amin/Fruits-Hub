import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BottomNavigationEntity {
  final String iconActive;
  final String iconNotActive;
  final String title;

  BottomNavigationEntity({
    required this.iconActive,
    required this.iconNotActive,
    required this.title,
  });

}

  List<BottomNavigationEntity> bottomNavigationItems(context)  => <BottomNavigationEntity>[
    BottomNavigationEntity(
      iconActive: AppAssets.imagesHomeActive,
      iconNotActive: AppAssets.imagesHome,
      title: S.of(context).home,
    ),
    BottomNavigationEntity(
      iconActive: AppAssets.imagesMenuActive,
      iconNotActive: AppAssets.imagesMenu,
      title: S.of(context).categories,
    ),
    BottomNavigationEntity(
      iconActive: AppAssets.imagesShoppingCartActive,
      iconNotActive: AppAssets.imagesShoppingCart,
      title: S.of(context).cart,
    ),
    BottomNavigationEntity(
      iconActive: AppAssets.imagesUser,
      iconNotActive: AppAssets.imagesUserActive,
      title: S.of(context).profile,
    ),
  ];
