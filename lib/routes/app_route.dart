import 'package:cargic_user/screens/cargic_services/car_modification/car_modification_request_screen.dart';
import 'package:cargic_user/screens/cargic_services/car_parts/car_parts_screen.dart';
import 'package:cargic_user/screens/cargic_services/car_registeration_renewal/car_registeration_renewal_screen.dart';
import 'package:cargic_user/screens/cargic_services/car_request_accepted_screens/services_requested_map.dart';
import 'package:cargic_user/screens/cargic_services/car_service/car_services_screen.dart';
import 'package:cargic_user/screens/cargic_services/car_services_order_screens/car_service_confirm_payment.dart';
import 'package:cargic_user/screens/cargic_services/car_services_order_screens/car_service_purchase_order.dart';
import 'package:cargic_user/screens/cargic_services/car_services_order_screens/track_order_map.dart';
import 'package:cargic_user/screens/cargic_services/car_services_order_screens/track_order_screen.dart';
import 'package:cargic_user/screens/cargic_services/car_wash/car_wash_screen.dart';
import 'package:cargic_user/screens/change_car_details_screens/add_new_vehicle_screen.dart';
import 'package:cargic_user/screens/change_car_details_screens/change_vehicle_screen.dart';
import 'package:cargic_user/screens/change_car_details_screens/choose_vehicle_pops_screen.dart';
import 'package:cargic_user/screens/change_location_screen.dart';
import 'package:cargic_user/screens/payment_screens/add_cards_screen.dart';
import 'package:cargic_user/screens/payment_screens/cards_screen.dart';
import 'package:cargic_user/screens/bottom_nav_screens/home_screen.dart';
import 'package:cargic_user/screens/auth_screens/login_with_email_screen.dart';
import 'package:cargic_user/screens/navigation_screen.dart';
import 'package:cargic_user/screens/auth_screens/onboarding_screen.dart';
import 'package:cargic_user/screens/auth_screens/register_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> appRoute = {
  HomeScreen.id: (context) => HomeScreen(),
  NavigationScreen.id: (context) => NavigationScreen(),
  OnBoardingScreen.id: (context) => OnBoardingScreen(),
  LoginWithEmailScreen.id: (context) => LoginWithEmailScreen(),
  RegisterScreen.id: (context) => RegisterScreen(),
  CardScreen.id: (context) => CardScreen(),
  AddCards.id: (context) => AddCards(),
  AddVehicleScreen.id: (context) => AddVehicleScreen(),
  ChangeVehicleScreen.id: (context) => ChangeVehicleScreen(),
  ChooseVehiclePropsScreen.id: (context) => ChooseVehiclePropsScreen(),
  ChangeLocationScreen.id: (context) => ChangeLocationScreen(),
  CarWashScreen.id: (context) => CarWashScreen(),
  CarServiceScreen.id: (context) => CarServiceScreen(),
  CarRegRenewal.id: (context) => CarRegRenewal(),
  CarModificationRequest.id: (context) => CarModificationRequest(),
  ServiceRequestMap.id: (context) => ServiceRequestMap(),
  CarPartsScreen.id: (context) => CarPartsScreen(),
  PurchaseOrderScreen.id: (context) => PurchaseOrderScreen(),
  TrackOrderScreen.id: (context) => TrackOrderScreen(),
  TrackOrderMap.id: (context) => TrackOrderMap(),
  ConfirmPaymentScreen.id: (context) => ConfirmPaymentScreen(),
};
