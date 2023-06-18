
import 'package:flutter/cupertino.dart';

class HSpace extends StatelessWidget {
  const HSpace(this.size, {Key? key}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}

class VSpace extends StatelessWidget {
  const VSpace(this.size, {Key? key}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}
