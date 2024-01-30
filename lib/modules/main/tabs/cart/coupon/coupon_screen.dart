import 'package:buaberry_mobile/config.dart';


class CouponScreen extends GetView<CouponController> {
  CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appController.appTheme.foodPrimaryLightColor,
        appBar: CommonAppBar(name: trans(ThemeFont.couponMg)),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomTextField(hinText: ThemeFont.inputCoupon)
                    .marginSymmetric(horizontal: Insets.i15, vertical: Insets.i15),
                CustomButton(
                  title: ThemeFont.useCouponCode,
                  radius: AppRadius.r10,
                  color: appController.appTheme.foodPrimaryColor,
                  fontColor: appController.appTheme.whiteColor,
                  padding: Insets.i10,
                  fontSize: FontSizes.f18,
                  onTap: () {},
                )
              ],
            ),
          ),
        ));
  }
}
