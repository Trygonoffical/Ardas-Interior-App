import 'package:get/get.dart';

import '../modules/AdressEnterPage/bindings/adress_enter_page_binding.dart';
import '../modules/AdressEnterPage/views/adress_enter_page_view.dart';
import '../modules/Blogs/bindings/blogs_binding.dart';
import '../modules/Blogs/views/blogs_view.dart';
import '../modules/Explore/bindings/explore_binding.dart';
import '../modules/Explore/views/explore_view.dart';
import '../modules/Filter_page/bindings/filter_page_binding.dart';
import '../modules/Filter_page/views/filter_page_view.dart';
import '../modules/HelpPage/Help_Expention/bindings/help_expention_binding.dart';
import '../modules/HelpPage/Help_Expention/views/help_expention_view.dart';
import '../modules/HelpPage/bindings/help_page_binding.dart';
import '../modules/HelpPage/views/help_page_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/Order_Track/bindings/order_track_binding.dart';
import '../modules/Order_Track/views/order_track_view.dart';
import '../modules/PaymentPage/bindings/payment_page_binding.dart';
import '../modules/PaymentPage/views/payment_page_view.dart';
import '../modules/Product_clean/bindings/product_clean_binding.dart';
import '../modules/Product_clean/views/product_clean_view.dart';
import '../modules/Product_details/bindings/product_details_binding.dart';
import '../modules/Product_details/views/product_details_view.dart';
import '../modules/Product_view/bindings/product_view_binding.dart';
import '../modules/Product_view/views/product_view_view.dart';
import '../modules/Reviews/bindings/reviews_binding.dart';
import '../modules/Reviews/views/reviews_view.dart';
import '../modules/RezorPey/bindings/rezor_pey_binding.dart';
import '../modules/RezorPey/views/rezor_pey_view.dart';
import '../modules/Search/bindings/search_binding.dart';
import '../modules/Search/views/search_view.dart';
import '../modules/SholpScreen/ShopItem/bindings/shop_item_binding.dart';
import '../modules/SholpScreen/ShopItem/views/shop_item_view.dart';
import '../modules/SholpScreen/bindings/sholp_screen_binding.dart';
import '../modules/SholpScreen/views/sholp_screen_view.dart';
import '../modules/Upload_Product/bindings/upload_product_binding.dart';
import '../modules/Upload_Product/views/upload_product_view.dart';
import '../modules/YouTube_Video/bindings/you_tube_video_binding.dart';
import '../modules/YouTube_Video/views/you_tube_video_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/mainScreen/bindings/main_screen_binding.dart';
import '../modules/mainScreen/views/main_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => const MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => const ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.BLOGS,
      page: () => BlogsView(),
      binding: BlogsBinding(),
    ),
    GetPage(
      name: _Paths.REVIEWS,
      page: () => const ReviewsView(),
      binding: ReviewsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.SHOLP_SCREEN,
      page: () => SholpScreenView(),
      binding: SholpScreenBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_ITEM,
      page: () => const ShopItemView(),
      binding: ShopItemBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_TRACK,
      page: () => const OrderTrackView(),
      binding: OrderTrackBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADRESS_ENTER_PAGE,
      page: () => const AdressEnterPageView(),
      binding: AdressEnterPageBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_PAGE,
      page: () => const PaymentPageView(),
      binding: PaymentPageBinding(),
    ),
    GetPage(
      name: _Paths.REZOR_PEY,
      page: () => const RezorPeyView(),
      binding: RezorPeyBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_VIEW,
      page: () => const ProductViewView(),
      binding: ProductViewBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_CLEAN,
      page: () => const ProductCleanView(),
      binding: ProductCleanBinding(),
    ),
    GetPage(
      name: _Paths.YOU_TUBE_VIDEO,
      page: () => const YouTubeVideoView(),
      binding: YouTubeVideoBinding(),
    ),
    GetPage(
      name: _Paths.HELP_PAGE,
      page: () => const HelpPageView(),
      binding: HelpPageBinding(),
    ),
    GetPage(
      name: _Paths.HELP_EXPENTION,
      page: () => const HelpExpentionView(),
      binding: HelpExpentionBinding(),
    ),
    GetPage(
      name: _Paths.FILTER_PAGE,
      page: () => const FilterPageView(),
      binding: FilterPageBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD_PRODUCT,
      page: () => UploadProductView(),
      binding: UploadProductBinding(),
    ),
  ];
}
