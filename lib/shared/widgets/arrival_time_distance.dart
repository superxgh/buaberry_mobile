import 'package:buaberry_mobile/config.dart';

class ArrivalTimeDistance extends StatelessWidget {
  final String? arrivalTime, distance, price, priceForPeople;
  final bool isFoodForPeopleShow;

  const ArrivalTimeDistance(
      {Key? key,
      this.distance,
      this.arrivalTime,
      this.isFoodForPeopleShow = false,
      this.priceForPeople,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          foSvgAssets.clock,
          height: Sizes.s12,
          color: isFoodForPeopleShow
              ? appController.appTheme.whiteColor
              : appController.appTheme.txt,
        ),
        const HSpace(Sizes.s5),
        Text(arrivalTime!,
            style: TextStyle(
              color: isFoodForPeopleShow
                    ? appController.appTheme.whiteColor
                    : appController.appTheme.foodTitleColor,
              fontFamily: GoogleFonts.lato().fontFamily,
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.f14,
              letterSpacing: 0,
              height: 1,
            )),
        const HSpace(Sizes.s12),
        if (isFoodForPeopleShow)
          Row(
            children: [
              Icon(Icons.circle,
                  color: isFoodForPeopleShow
                      ? appController.appTheme.whiteColor
                      : appController.appTheme.textColor,
                  size: Sizes.s5),
              const HSpace(Sizes.s5),
              Text('${appController.priceSymbol}$price for $priceForPeople',
                  style: TextStyle(
                    color: isFoodForPeopleShow
                        ? appController.appTheme.whiteColor
                        : appController.appTheme.foodContentColor,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.w400,
                    fontSize: FontSizes.f14,
                    letterSpacing: 0,
                    height: 1,
                  )),
              const HSpace(Sizes.s12),
            ],
          ),
        Icon(
          Icons.circle,
          color: isFoodForPeopleShow
              ? appController.appTheme.whiteColor
              : appController.appTheme.foodContentColor,
          size: Sizes.s5,
        ),
        const HSpace(Sizes.s5),
        !isFoodForPeopleShow
            ? SvgPicture.asset(foSvgAssets.map,
                color: isFoodForPeopleShow
                    ? appController.appTheme.whiteColor
                    : appController.appTheme.txt)
            : Row(
                children: [
                  Text("4.7 ",
                      style: TextStyle(
                        color: appController.appTheme.whiteColor,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: FontSizes.f14,
                        letterSpacing: 0,
                        height: 1,
                      )),
                  Text(FoodOrderingThemeFont.ratings.tr,
                      style: TextStyle(
                        color: appController.appTheme.whiteColor,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: FontSizes.f14,
                        letterSpacing: 0,
                        height: 1,
                      ))
                ],
              ),
        const HSpace(Sizes.s5),
        if (!isFoodForPeopleShow)
          Text(distance!,
              style: TextStyle(
                color: isFoodForPeopleShow
                    ? appController.appTheme.whiteColor
                    : appController.appTheme.foodTitleColor,
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.w400,
                letterSpacing: 0,
                height: 1,
              ))
      ],
    );
  }
}
