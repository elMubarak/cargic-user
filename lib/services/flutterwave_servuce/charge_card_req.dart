import 'package:cargic_user/services/flutterwave_servuce/utils/flutter_wave_urls.dart';
import 'package:flutter/material.dart';

import 'auth.dart';

class ChargeCardRequest {
  String cardNumber;
  String cvv;
  String expiryMonth;
  String expiryYear;
  String amount;
  String currency;
  String email;
  String fullName;
  String txRef;
  String redirectUrl;
  String country;
  Authorization authorization;

  /// ChargeCardRequest constructor
  ChargeCardRequest(
      {@required this.cardNumber,
      @required this.cvv,
      @required this.expiryMonth,
      @required this.expiryYear,
      @required this.currency,
      @required this.amount,
      @required this.email,
      @required this.fullName,
      @required this.txRef,
      this.country,
      this.redirectUrl = FlutterwaveURLS.DEFAULT_REDIRECT_URL,
      this.authorization});

  /// Converts ChargeCardRequest instance to a map
  Map<String, dynamic> toJson() {
    return {
      "card_number": this.cardNumber,
      "cvv": this.cvv,
      "expiry_month": this.expiryMonth,
      "expiry_year": this.expiryYear,
      "currency": this.currency,
      "amount": this.amount,
      "email": this.email,
      "fullname": this.fullName,
      "country": this.country,
      "tx_ref": this.txRef,
      "redirect_url": this.redirectUrl,
      "authorization": this.authorization == null
          ? Authorization().toJson()
          : this.authorization.toJson()
    };
  }
}
