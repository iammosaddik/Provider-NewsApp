

import 'package:flutter/material.dart';

    const purpleColor = Color(0xff2536A7);
    const purplePrimaryColor = Color(0xff475AD7);
    const purpleLightColor = Color(0xff475AD7);
    const purpleLighterColor = Color(0xffEEF0FB);
    const blackDarkerColor = Color(0xff22242F);
    const blackPrimaryColor = Color(0xff333647);
    const blackLightColor = Color(0xff44485F);
    const blackLighterColor = Color(0xff555A77);
    const greyDarkerColor = Color(0xff666C8E);
    const greyPrimaryColor = Color(0xff7C82A1);
    const greyLightColor = Color(0xffACAFC3);
    const greyLighterColor = Color(0xffF3F4F6);
    const whiteColor = Color(0xffffffff);
    const redGreyColor = Color(0xfffaa1a1);

    class ThemeColor {
        gradientColor (){
            const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                    Color(0xff226fff),
                    Colors.redAccent,
                    Colors.blue,
                ],
                stops: [
                    0.1,
                    0.3,
                    0.5,
                ],
            );
        }
    }