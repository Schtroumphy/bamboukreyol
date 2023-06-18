import 'package:bamboukreyol/core/constants/string_constants.dart';
import 'package:bamboukreyol/core/extensions/context_extensions.dart';
import 'package:bamboukreyol/features/login/widgets/rounded_filled_text_field.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/spaces.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Spacer(flex: 1),
                Text(StringConstants.belBonjou, style: context.t.titleLarge),
                const Spacer(),
                const CircleAvatar(radius: 70, backgroundImage: AssetImage(StringConstants.logoBkWhite)),
                const VSpace(24),
                Text(StringConstants.kodLa, style: context.t.titleSmall),
                const VSpace(16),
                RoundedFilledTextField(MediaQuery.of(context).size.width / 1.5),
                const Spacer(flex: 3),
                Text(StringConstants.appRights, textAlign: TextAlign.center, style: context.t.labelSmall),
                const VSpace(8),
                Text(StringConstants.versionNumber, textAlign: TextAlign.center, style: context.t.labelSmall?.copyWith(fontWeight: FontWeight.w800)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
