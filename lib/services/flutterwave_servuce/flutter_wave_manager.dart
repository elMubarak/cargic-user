import 'package:flutter/material.dart';

import 'card_payment_manager.dart';

class FlutterwavePaymentManager {
  String publicKey;
  String encryptionKey;
  String currency;
  String amount;
  String email;
  String fullName;
  String txRef;
  bool isDebugMode;
  String phoneNumber;
  int frequency;
  int duration;
  bool isPermanent;
  String narration;
  String network;
  bool acceptAccountPayment;
  bool acceptBankTransferPayment;
  bool acceptCardPayment;
  bool acceptUSSDPayment;
  bool acceptUKAccountPayment;
  bool acceptRwandaMoneyPayment;
  bool acceptMpesaPayment;
  bool acceptZambiaPayment;
  bool acceptGhanaPayment;
  bool acceptUgandaPayment;
  bool acceptBarterPayment;
  bool acceptSouthAfricaBankPayment;
  bool acceptFancophoneMobileMoney;
  bool acceptVoucherPayment;
  String country;

  /// FlutterwavePaymentManager Constructor
  FlutterwavePaymentManager(
      {@required this.publicKey,
      @required this.encryptionKey,
      @required this.currency,
      @required this.amount,
      @required this.email,
      @required this.fullName,
      @required this.txRef,
      @required this.isDebugMode,
      @required this.phoneNumber,
      this.country,
      this.acceptAccountPayment = false,
      this.acceptBankTransferPayment = false,
      this.acceptCardPayment = false,
      this.acceptUSSDPayment = false,
      this.acceptUKAccountPayment = false,
      this.acceptSouthAfricaBankPayment = false,
      this.acceptRwandaMoneyPayment = false,
      this.acceptMpesaPayment = false,
      this.acceptZambiaPayment = false,
      this.acceptGhanaPayment = false,
      this.acceptUgandaPayment = false,
      this.acceptFancophoneMobileMoney = false,
      this.acceptBarterPayment = false,
      this.acceptVoucherPayment = false,
      this.frequency,
      this.duration,
      this.isPermanent,
      this.narration,
      this.network = ""});

  /// Returns an instance of CardPaymentManager
  CardPaymentManager getCardPaymentManager() {
    return CardPaymentManager(
        publicKey: this.publicKey,
        encryptionKey: this.encryptionKey,
        currency: this.currency,
        email: this.email,
        fullName: this.fullName,
        amount: this.amount,
        txRef: this.txRef,
        isDebugMode: this.isDebugMode,
        narration: this.narration,
        isPermanent: this.isPermanent,
        phoneNumber: this.phoneNumber,
        frequency: this.frequency,
        country: this.country,
        duration: this.duration);
  }

  /// Returns an instance of BankTransferPaymentManager
  // BankTransferPaymentManager getBankTransferPaymentManager() {
  //   return BankTransferPaymentManager(
  //       publicKey: this.publicKey,
  //       currency: this.currency,
  //       email: this.email,
  //       amount: this.amount,
  //       txRef: this.txRef,
  //       isDebugMode: this.isDebugMode,
  //       narration: this.narration,
  //       isPermanent: this.isPermanent,
  //       phoneNumber: this.phoneNumber,
  //       frequency: this.frequency,
  //       duration: this.duration);
  // }

  /// Returns an instance of BankAccountPaymentManager
  // BankAccountPaymentManager getBankAccountPaymentManager() {
  //   return BankAccountPaymentManager(
  //       publicKey: this.publicKey,
  //       currency: this.currency,
  //       email: this.email,
  //       amount: this.amount,
  //       txRef: this.txRef,
  //       isDebugMode: this.isDebugMode,
  //       phoneNumber: this.phoneNumber,
  //       fullName: this.fullName);
  // }

  /// Returns an instance of USSDPaymentManager
  // USSDPaymentManager getUSSDPaymentManager() {
  //   return USSDPaymentManager(
  //       publicKey: this.publicKey,
  //       currency: this.currency,
  //       email: this.email,
  //       amount: this.amount,
  //       txRef: this.txRef,
  //       isDebugMode: this.isDebugMode,
  //       phoneNumber: this.phoneNumber,
  //       fullName: this.fullName);
  // }

  /// Returns an instance of MobileMoneyPaymentManager
  // MobileMoneyPaymentManager getMobileMoneyPaymentManager() {
  //   return MobileMoneyPaymentManager(
  //       publicKey: this.publicKey,
  //       currency: this.currency,
  //       network: this.network,
  //       amount: this.amount,
  //       txRef: this.txRef,
  //       isDebugMode: this.isDebugMode,
  //       phoneNumber: this.phoneNumber,
  //       fullName: this.fullName,
  //       email: this.email);
  // }

  // /// Returns an instance of MpesaPaymentManager
  // MpesaPaymentManager getMpesaPaymentManager() {
  //   return MpesaPaymentManager(
  //       publicKey: this.publicKey,
  //       currency: this.currency,
  //       amount: this.amount,
  //       txRef: this.txRef,
  //       isDebugMode: this.isDebugMode,
  //       phoneNumber: this.phoneNumber,
  //       fullName: this.fullName,
  //       email: this.email);
  // }

  // /// Returns an instance of VoucherPaymentManager
  // VoucherPaymentManager getVoucherPaymentManager() {
  //   return VoucherPaymentManager(
  //       publicKey: this.publicKey,
  //       currency: this.currency,
  //       amount: this.amount,
  //       txRef: this.txRef,
  //       isDebugMode: this.isDebugMode,
  //       phoneNumber: this.phoneNumber,
  //       fullName: this.fullName,
  //       email: this.email);
  // }
}
