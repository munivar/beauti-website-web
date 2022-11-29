import 'package:flutter/material.dart';

class Constants {
  static mainOption(String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
      child: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static mainContainer(bool? isMobile, bool? isTablet, String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 50, bottom: 25),
      child: Text(
        name,
        style: TextStyle(
          fontSize: isMobile == true
              ? 24
              : isTablet == true
                  ? 28
                  : 32,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins-Medium",
        ),
      ),
    );
  }

  static aboutHeadPara(bool? isMobile, bool? isTablet, String name) {
    return Text(
      name,
      style: TextStyle(
        fontSize: isMobile == true
            ? 16
            : isTablet == true
                ? 18
                : 20,
        color: Colors.black,
        fontFamily: "Poppins-Medium",
      ),
    );
  }

  static aboutPara(bool? isMobile, bool? isTablet, String para) {
    return Text(
      para,
      style: TextStyle(
        color: Colors.black,
        fontSize: isMobile == true
            ? 14
            : isTablet == true
                ? 16
                : 18,
      ),
    );
  }
}
