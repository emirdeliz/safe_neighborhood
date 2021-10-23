import 'package:flutter/material.dart';
import 'package:sn_design_system/src/components/atoms/text/text_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Row(mainAxisSize: MainAxisSize.min, children: [
    //   CircularProgressIndicator(),
    //   Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: TextWidget('Processando...',
    //           fontSize: FontSizeCustom.small, color: Color.loadingTextColor))
    // ]);
    return const TextWidget('LoadingWidget');
  }
}
